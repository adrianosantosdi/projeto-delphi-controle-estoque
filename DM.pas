unit DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Dialogs;

type
  TDmodule = class(TDataModule)
    FDConn: TFDConnection;
    QryProdutos: TFDQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    dsProdutos: TDataSource;
    dsMovimentacoes: TDataSource;
    dsMovimentacoesProdutos: TDataSource;
    QryMovimentacoes: TFDQuery;
    QryMovimentacoesProdutos: TFDQuery;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminueEstoque: TFDCommand;
    QryProdutosid: TFDAutoIncField;
    QryProdutosnome: TStringField;
    QryProdutosfabricante: TStringField;
    QryProdutosvalidade: TDateField;
    QryProdutosestoque_atual: TIntegerField;
    QryMovimentacoesid: TFDAutoIncField;
    QryMovimentacoestipo: TStringField;
    QryMovimentacoesdata_hora: TDateTimeField;
    QryMovimentacoesresponsavel: TStringField;
    QryMovimentacoesobservacoes: TMemoField;
    QryMovimentacoesProdutosid: TFDAutoIncField;
    QryMovimentacoesProdutosid_movimentacao: TIntegerField;
    QryMovimentacoesProdutosid_produto: TIntegerField;
    QryMovimentacoesProdutosquantidade: TIntegerField;
    QryMovimentacoesProdutosnomeProduto: TStringField;
    sqlMovimentaoes: TFDQuery;
    dsSqlMovimentacoes: TDataSource;
    sqlMovProdutos: TFDQuery;
    dsSqlMovProdutos: TDataSource;
    sqlMovProdutosid: TFDAutoIncField;
    sqlMovProdutosid_movimentacao: TIntegerField;
    sqlMovProdutosid_produto: TIntegerField;
    sqlMovProdutosquantidade: TIntegerField;
    sqlMovProdutosnomeProduto: TStringField;
    procedure QryMovimentacoesProdutosAfterPost(DataSet: TDataSet);
    procedure QryMovimentacoesProdutosAfterDelete(DataSet: TDataSet);
    procedure calcularTotais;
    procedure QryMovimentacoesAfterScroll(DataSet: TDataSet);
    procedure QryMovimentacoesProdutosBeforeDelete(DataSet: TDataSet);
    procedure QryMovimentacoesBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmodule: TDmodule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unitCadMovimentacao, unitCadProduto, unitConsMovimentacao, unitPrincipal;

{$R *.dfm}

procedure TDmodule.calcularTotais;
var
  totais : integer;
begin

  totais := 0;

  if QryMovimentacoesProdutos.State in [dsBrowse] then
    begin
      QryMovimentacoesProdutos.First;

      while not QryMovimentacoesProdutos.Eof do
        begin
          totais := totais + QryMovimentacoesProdutos.FieldByName('quantidade').Value;

        QryMovimentacoesProdutos.Next;

        frmCadMovimentacao.lblTotalQuantidade.Caption := intToStr(totais);
      end;
    end;

end;

procedure TDmodule.QryMovimentacoesAfterScroll(DataSet: TDataSet);
begin
  calcularTotais;
end;

procedure TDmodule.QryMovimentacoesBeforeDelete(DataSet: TDataSet);
begin
  if QryMovimentacoesProdutos.RecordCount > 0  then
    begin
      ShowMessage('Existem produtos cadastrados nessa movimenta��o. Exclua-os primeiros');
      Abort;
    end;

end;

procedure TDmodule.QryMovimentacoesProdutosAfterDelete(DataSet: TDataSet);
begin
  calcularTotais;

  
end;

procedure TDmodule.QryMovimentacoesProdutosAfterPost(DataSet: TDataSet);
begin
  calcularTotais;

  if QryMovimentacoes.FieldByName('tipo').Value = 'Entrada no Estoque'  then
     begin
       sqlAumentaEstoque.ParamByName('pId').Value := QryMovimentacoesProdutos.FieldByName('id_produto').Value;
       sqlAumentaEstoque.ParamByName('pQtd').Value := QryMovimentacoesProdutos.FieldByName('quantidade').Value;
       sqlAumentaEstoque.Execute();
     end;

  if QryMovimentacoes.FieldByName('tipo').Value = 'Sa�da no Estoque'  then
     begin
       sqlDiminueEstoque.ParamByName('pId').Value := QryMovimentacoesProdutos.FieldByName('id_produto').Value;
       sqlDiminueEstoque.ParamByName('pQtd').Value := QryMovimentacoesProdutos.FieldByName('quantidade').Value;
       sqlDiminueEstoque.Execute();
     end;

end;

procedure TDmodule.QryMovimentacoesProdutosBeforeDelete(DataSet: TDataSet);
begin
  if QryMovimentacoes.FieldByName('tipo').Value = 'Entrada no Estoque'  then
     begin
       sqlDiminueEstoque.ParamByName('pId').Value := QryMovimentacoesProdutos.FieldByName('id_produto').Value;
       sqlDiminueEstoque.ParamByName('pQtd').Value := QryMovimentacoesProdutos.FieldByName('quantidade').Value;
       sqlDiminueEstoque.Execute();
     end;

  if QryMovimentacoes.FieldByName('tipo').Value = 'Sa�da no Estoque'  then
     begin
       sqlAumentaEstoque.ParamByName('pId').Value := QryMovimentacoesProdutos.FieldByName('id_produto').Value;
       sqlAumentaEstoque.ParamByName('pQtd').Value := QryMovimentacoesProdutos.FieldByName('quantidade').Value;
       sqlAumentaEstoque.Execute();
     end;
end;

end.
