unit DMBooking;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.Dialogs;

type
  TfrmBooking = class(TDataModule)
    dsManage: TDataSource;
    ADOConnectionmanage: TADOConnection;
    tblManage: TADOTable;
    ADOConnectionReservations: TADOConnection;
    tblReservations: TADOTable;
    dsReservations: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBooking: TfrmBooking;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function FindDatabase: string; // Looks for Customers.mdb next to the exe so the project works on any PC.
var
  sExe: string;
  i: Integer;
  cand: array[0..4] of string;
begin
  sExe := ExtractFilePath(ParamStr(0));
  cand[0] := sExe + 'Databases\Customers.mdb';
  cand[1] := sExe + 'Customers.mdb';
  cand[2] := sExe + '..\Databases\Customers.mdb';
  cand[3] := sExe + '..\..\Databases\Customers.mdb';
  cand[4] := sExe + '..\..\..\Databases\Customers.mdb';
  Result := '';
  for i := Low(cand) to High(cand) do
    if FileExists(cand[i]) then
    begin
      Result := ExpandFileName(cand[i]);
      Exit;
    end;
end;

procedure TfrmBooking.DataModuleCreate(Sender: TObject);
var
  sDb, sConn: string;
begin
  sDb := FindDatabase;
  if sDb = '' then
  begin
    ShowMessage('Customers.mdb was not found.' + sLineBreak +
                'Put it in a "Databases" folder next to SmartEats.exe and start again.');
    Halt(1);
  end;
  sConn := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + sDb +
           ';Mode=ReadWrite;Persist Security Info=False';

  ADOConnectionmanage.Connected := False;
  ADOConnectionmanage.ConnectionString := sConn;
  ADOConnectionmanage.Connected := True;
  tblManage.Active := True;

  ADOConnectionReservations.Connected := False;
  ADOConnectionReservations.ConnectionString := sConn;
  ADOConnectionReservations.Connected := True;
  tblReservations.Active := True;
end;

end.
