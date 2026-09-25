object ModelCidadesDM: TModelCidadesDM
  Height = 480
  Width = 640
  object QCidadeCadastro: TFDQuery
    Active = True
    Connection = ModelConexaoDM.FDConnection1
    SQL.Strings = (
      'select * from cidades')
    Left = 120
    Top = 72
    object QCidadeCadastroID: TFDAutoIncField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object QCidadeCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object QCidadeCadastroUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object QCidadeCadastroCODIGO_IBGE: TIntegerField
      DisplayLabel = 'Codigo IBGE'
      FieldName = 'CODIGO_IBGE'
      Origin = 'CODIGO_IBGE'
      Required = True
    end
  end
  object QCidadeBusca: TFDQuery
    Active = True
    Connection = ModelConexaoDM.FDConnection1
    SQL.Strings = (
      '   select * from cidades')
    Left = 240
    Top = 72
    object QCidadeBuscaID: TFDAutoIncField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object QCidadeBuscaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object QCidadeBuscaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object QCidadeBuscaCODIGO_IBGE: TIntegerField
      DisplayLabel = 'Codigo IBGE'
      FieldName = 'CODIGO_IBGE'
      Origin = 'CODIGO_IBGE'
      Required = True
    end
  end
  object DS_QCidadeCadastro: TDataSource
    DataSet = QCidadeCadastro
    Left = 120
    Top = 136
  end
  object DS_QCidadeBusca: TDataSource
    DataSet = QCidadeBusca
    Left = 240
    Top = 136
  end
end
