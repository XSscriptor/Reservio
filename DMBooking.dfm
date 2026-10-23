object frmBooking: TfrmBooking
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object dsManage: TDataSource
    DataSet = tblManage
    Left = 24
    Top = 24
  end
  object ADOConnectionmanage: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\kagow\Downloads\Reservio(Table booking)-20261007T150222Z-1-0' +
      '01\Reservio(Table booking)\Databases\Customers.mdb;Mode=ReadWrit' +
      'e;Persist Security Info=False;Jet OLEDB:System database="";Jet O' +
      'LEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:E' +
      'ngine Type=5;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global ' +
      'Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLED' +
      'B:New Database Password="";Jet OLEDB:Create System Database=Fals' +
      'e;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale o' +
      'n Compact=False;Jet OLEDB:Compact Without Replica Repair=False;J' +
      'et OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 136
  end
  object tblManage: TADOTable
    Active = True
    Connection = ADOConnectionmanage
    CursorType = ctStatic
    TableName = 'Customers'
    Left = 24
    Top = 80
  end
  object ADOConnectionReservations: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\kagow\Down' +
      'loads\Reservio(Table booking)-20261007T150222Z-1-001\Reservio(Ta' +
      'ble booking)\Databases\Customers.mdb;Mode=ReadWrite;Persist Secu' +
      'rity Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 568
    Top = 168
  end
  object tblReservations: TADOTable
    Active = True
    Connection = ADOConnectionReservations
    CursorType = ctStatic
    TableName = 'Reservations'
    Left = 568
    Top = 96
  end
  object dsReservations: TDataSource
    DataSet = tblReservations
    Left = 568
    Top = 32
  end
end
