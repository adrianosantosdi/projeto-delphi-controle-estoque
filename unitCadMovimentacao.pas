unit unitCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadMovimentacao = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    DBNavigator2: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    lblTotalQuantidade: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMovimentacao: TfrmCadMovimentacao;

implementation

{$R *.dfm}

uses DM, unitPrincipal;

procedure TfrmCadMovimentacao.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then
    begin
      Dmodule.QryMovimentacoes.FieldByName('data_hora').Value := Now;
    end;
end;

procedure TfrmCadMovimentacao.FormShow(Sender: TObject);
begin
  Dmodule.calcularTotais;
end;

end.
