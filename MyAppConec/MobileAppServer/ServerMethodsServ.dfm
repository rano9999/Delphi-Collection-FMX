object ServerMethods: TServerMethods
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 628
  Width = 570
  object ConnectionMain: TFDConnection
    Params.Strings = (
      'ConnectionDef=MYWALID_MYSQL')
    LoginPrompt = False
    Left = 473
    Top = 230
  end
  object ProcGetActive: TFDStoredProc
    Connection = ConnectionMain
    StoredProcName = 'mywalid.GetActive'
    Left = 129
    Top = 427
    ParamData = <
      item
        Position = 1
        Name = 'AWorkID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'result'
        DataType = ftBoolean
        ParamType = ptResult
      end>
  end
  object ProcGetAdress: TFDStoredProc
    Connection = ConnectionMain
    StoredProcName = 'mywalid.GetAdress'
    Left = 153
    Top = 362
    ParamData = <
      item
        Position = 1
        Name = 'AWorkID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'result'
        DataType = ftString
        ParamType = ptResult
        Size = 255
      end>
  end
  object FncgetriderequirementProc: TFDStoredProc
    Connection = ConnectionMain
    StoredProcName = '"fncGetRideRequirement"'
    Left = 196
    Top = 156
    ParamData = <
      item
        Position = 1
        Name = 'arg_ride_id'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'result'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptResult
      end>
  end
  object ProcGetPosition: TFDStoredProc
    Connection = ConnectionMain
    StoredProcName = 'mywalid.GetPosition'
    Left = 248
    Top = 227
    ParamData = <
      item
        Position = 1
        Name = 'AWorkID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'result'
        DataType = ftString
        ParamType = ptResult
        Size = 20
        Value = Null
      end>
  end
  object qrWorkerInfo: TFDQuery
    Connection = ConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWorkerInfo')
    Left = 51
    Top = 335
  end
  object qrWorkerStatus: TFDQuery
    Connection = ConnectionMain
    SQL.Strings = (
      'SELECT * FROM tWorkerStatus')
    Left = 312
    Top = 363
  end
  object DSPWorkerInfo: TDataSetProvider
    DataSet = qrWorkerInfo
    Left = 464
    Top = 336
  end
  object DSPWorkerStatus: TDataSetProvider
    DataSet = qrWorkerStatus
    Left = 448
    Top = 400
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 120
  end
  object tmpScript: TFDScript
    SQLScripts = <>
    Connection = ConnectionMain
    Params = <>
    Macros = <>
    Left = 192
    Top = 252
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\AllServer\mysql\lib\libmysql.dll'
    Left = 104
    Top = 256
  end
  object ProcGetWorkID: TFDStoredProc
    Connection = ConnectionMain
    StoredProcName = 'mywalid.GetWorkID'
    Left = 49
    Top = 459
    ParamData = <
      item
        Position = 1
        Name = 'AName'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end
      item
        Position = 2
        Name = 'result'
        DataType = ftInteger
        ParamType = ptResult
      end>
  end
end
