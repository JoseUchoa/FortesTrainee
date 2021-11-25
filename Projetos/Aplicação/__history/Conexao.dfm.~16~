object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object Connection: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'User_Name=SYSDBA'
      
        'Database=C:\Users\joseg\Documents\GitHub\FortesTrainee\Projetos\' +
        'Aplica'#231#227'o\dados.fdb')
    LoginPrompt = False
    Transaction = Transaction
    Left = 32
    Top = 24
  end
  object Transaction: TFDTransaction
    Connection = Connection
    Left = 32
    Top = 96
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 136
    Top = 24
  end
end
