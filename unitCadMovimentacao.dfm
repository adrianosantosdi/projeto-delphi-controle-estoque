object frmCadMovimentacao: TfrmCadMovimentacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Movimenta'#231#227'o'
  ClientHeight = 686
  ClientWidth = 1321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 351
    Height = 33
    Caption = 'Gerenciar Movimenta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 159
    Width = 17
    Height = 19
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 216
    Width = 37
    Height = 19
    Caption = 'TIPO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 280
    Width = 106
    Height = 19
    Caption = 'DATA E HORA'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 344
    Width = 107
    Height = 19
    Caption = 'RESPONS'#193'VEL'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 408
    Width = 110
    Height = 19
    Caption = 'OBSERVA'#199#213'ES'
    FocusControl = DBMemo1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 904
    Top = 65
    Width = 370
    Height = 33
    Caption = 'Produtos da Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 1104
    Top = 160
    Width = 97
    Height = 23
    Caption = 'Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 920
    Top = 610
    Width = 147
    Height = 23
    Caption = 'Total de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblTotalQuantidade: TLabel
    Left = 1073
    Top = 610
    Width = 20
    Height = 23
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 183
    Width = 106
    Height = 27
    DataField = 'id'
    DataSource = Dmodule.dsMovimentacoes
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 305
    Width = 217
    Height = 27
    DataField = 'data_hora'
    DataSource = Dmodule.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 369
    Width = 343
    Height = 27
    DataField = 'responsavel'
    DataSource = Dmodule.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 433
    Width = 343
    Height = 153
    DataField = 'observacoes'
    DataSource = Dmodule.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 8
    Top = 241
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'tipo'
    DataSource = Dmodule.dsMovimentacoes
    Items.Strings = (
      'Entrada no Estoque'
      'Sa'#237'da do Estoque')
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 63
    Width = 360
    Height = 49
    DataSource = Dmodule.dsMovimentacoes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 5
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 389
    Top = 160
    Width = 484
    Height = 427
    DataSource = Dmodule.dsMovimentacoes
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'TIPO'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_hora'
        Title.Caption = 'DATA E HORA'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Caption = 'RESPONS'#193'VEL'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'observacoes'
        Title.Caption = 'OBSERVA'#199#213'ES'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 969
    Top = 104
    Width = 232
    Height = 41
    DataSource = Dmodule.dsMovimentacoesProdutos
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 920
    Top = 189
    Width = 178
    Height = 21
    DataField = 'id_produto'
    DataSource = Dmodule.dsMovimentacoesProdutos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = Dmodule.dsProdutos
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 1104
    Top = 189
    Width = 145
    Height = 21
    DataField = 'quantidade'
    DataSource = Dmodule.dsMovimentacoesProdutos
    TabOrder = 9
  end
  object DBGrid2: TDBGrid
    Left = 920
    Top = 216
    Width = 393
    Height = 370
    DataSource = Dmodule.dsMovimentacoesProdutos
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomeProduto'
        Title.Caption = 'PRODUTO'
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'QUANTIDADE'
        Width = 97
        Visible = True
      end>
  end
end
