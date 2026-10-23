program SmartEats;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  DMBooking in 'DMBooking.pas' {frmBooking: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SmartEats';
  Application.CreateForm(TfrmBooking, frmBooking);
  Application.CreateForm(TfrmMain, frmMain);
  application.Run;
end.
