unit DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmodule: TDmodule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.