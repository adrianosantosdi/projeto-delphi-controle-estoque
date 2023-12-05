program Estoque;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {frmPrincipal},
  unitCadProduto in 'unitCadProduto.pas' {frmCadProdutos},
  unitCadMovimentacao in 'unitCadMovimentacao.pas' {frmCadMovimentacao},
  unitConsMovimentacao in 'unitConsMovimentacao.pas' {frmConstMovimentacao},
  DM in 'DM.pas' {Dmodule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.CreateForm(TfrmCadMovimentacao, frmCadMovimentacao);
  Application.CreateForm(TfrmConstMovimentacao, frmConstMovimentacao);
  Application.CreateForm(TDmodule, Dmodule);
  Application.Run;
end.
