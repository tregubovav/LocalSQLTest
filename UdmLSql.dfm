object dmlSQL: TdmlSQL
  OldCreateOrder = False
  Height = 229
  Width = 277
  object lSQL: TFDLocalSQL
    Connection = conlSQL
    Left = 72
    Top = 16
  end
  object conlSQL: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    ConnectedStoredUsage = [auDesignTime]
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object qMain: TFDQuery
    Connection = conlSQL
    Left = 120
    Top = 16
  end
  object bsdblSQL: TBindSourceDB
    DataSet = qMain
    ScopeMappings = <>
    Left = 184
    Top = 16
  end
  object mtConnections: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 24
    Top = 72
    object mtConnectionsName: TStringField
      FieldName = 'Name'
      Size = 64
    end
    object mtConnectionsServer: TStringField
      FieldName = 'Server'
      Size = 64
    end
    object mtConnectionsDatabase: TStringField
      FieldName = 'Database'
      Size = 128
    end
    object mtConnectionsusername: TStringField
      FieldName = 'username'
      Size = 64
    end
    object mtConnectionspassword: TStringField
      FieldName = 'password'
      Size = 512
    end
    object mtConnectionsConnectionParams: TMemoField
      FieldName = 'ConnectionParams'
      BlobType = ftMemo
    end
  end
  object mtSources: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 24
    Top = 128
    object mtSourcesName: TStringField
      FieldName = 'Name'
      Size = 64
    end
    object mtSourcesType: TSmallintField
      FieldName = 'Type'
    end
    object mtSourcestblName: TStringField
      FieldName = 'tblName'
      Size = 64
    end
    object mtSourcessqlText: TMemoField
      FieldName = 'sqlText'
      BlobType = ftMemo
    end
  end
  object bsdblConnections: TBindSourceDB
    DataSet = mtConnections
    ScopeMappings = <>
    Left = 176
    Top = 72
  end
  object bsdblSources: TBindSourceDB
    DataSet = mtSources
    ScopeMappings = <>
    Left = 176
    Top = 128
  end
end
