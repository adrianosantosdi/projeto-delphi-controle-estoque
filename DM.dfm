object Dmodule: TDmodule
  OldCreateOrder = False
  Height = 536
  Width = 873
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=dbcontrole'
      'User_Name=root'
      'Password=p@ssw0rd'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 72
  end
  object QryProdutos: TFDQuery
    Active = True
    Connection = FDConn
    SQL.Strings = (
      'select * from produtos')
    Left = 168
    Top = 72
    object QryProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QryProdutosnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object QryProdutosfabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Size = 30
    end
    object QryProdutosvalidade: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'validade'
      Origin = 'validade'
      EditMask = '##/##/####;1;_'
    end
    object QryProdutosestoque_atual: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'estoque_atual'
      Origin = 'estoque_atual'
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Adriano Santos\Documents\Projetos Delphi\Controle de Es' +
      'toque\libmySQL.dll'
    Left = 768
    Top = 40
  end
  object dsProdutos: TDataSource
    DataSet = QryProdutos
    Left = 168
    Top = 136
  end
  object dsMovimentacoes: TDataSource
    DataSet = QryMovimentacoes
    Left = 312
    Top = 136
  end
  object dsMovimentacoesProdutos: TDataSource
    DataSet = QryMovimentacoesProdutos
    Left = 456
    Top = 136
  end
  object QryMovimentacoes: TFDQuery
    Active = True
    Connection = FDConn
    SQL.Strings = (
      'select * from movimentacoes')
    Left = 304
    Top = 72
  end
  object QryMovimentacoesProdutos: TFDQuery
    Active = True
    Connection = FDConn
    SQL.Strings = (
      'select * from movimentacoes_produtos')
    Left = 448
    Top = 80
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = FDConn
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 64
    Top = 312
  end
  object sqlDiminueEstoque: TFDCommand
    Connection = FDConn
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 176
    Top = 312
  end
end
