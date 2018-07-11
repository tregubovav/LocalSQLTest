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
  object conBugzilla: TFDConnection
    ConnectionName = 'Bugzilla'
    Params.Strings = (
      'ConnectionDef=W_Bugzilla')
    ConnectedStoredUsage = [auDesignTime]
    LoginPrompt = False
    Left = 24
    Top = 64
  end
  object conID: TFDConnection
    ConnectionName = 'Bugzilla'
    Params.Strings = (
      'ConnectionDef=W_IntegratedData')
    ConnectedStoredUsage = [auDesignTime]
    LoginPrompt = False
    Left = 24
    Top = 112
  end
  object qMain: TFDQuery
    Connection = conlSQL
    Left = 120
    Top = 16
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = qMain
    ScopeMappings = <>
    Left = 168
    Top = 136
  end
end
