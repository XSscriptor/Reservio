unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.DBCtrls, Vcl.Imaging.jpeg, dmbooking,
  Vcl.Buttons, Vcl.Samples.Spin;

type
  TfrmMain = class(TForm)
    pnlSidebar: TPanel;
    imgLogo: TImage;
    lblBrand: TLabel;
    lblTagline: TLabel;
    pnlSideLine: TPanel;
    pnlNavHome: TPanel;
    pnlNavCustomers: TPanel;
    pnlNavExit: TPanel;
    pgcMain: TPageControl;
    tsHome: TTabSheet;
    tsCustomers: TTabSheet;
    imgHomeBg: TImage;
    pnlHomeTitle: TPanel;
    pnlHomeBar: TPanel;
    lblHomeKicker: TLabel;
    lblHomeTitle: TLabel;
    lblHomeSub: TLabel;
    pnl_tileTables: TPanel;
    pnl_tileTablesBar: TPanel;
    lbl_tileTablesTitle: TLabel;
    lbl_tileTablesSub: TLabel;
    imgBgCust: TImage;
    pnlHdrCust: TPanel;
    lblHdrCustTitle: TLabel;
    lblHdrCustSub: TLabel;
    pnlHdrCustLine: TPanel;
    pnlFindCard: TPanel;
    pnlFindCardBar: TPanel;
    pnlFindCardTitle: TLabel;
    pnlFindCardSub: TLabel;
    lblTxt004: TLabel;
    edtSearchPhone: TEdit;
    PNLFindCust: TPanel;
    pnlProfile: TPanel;
    lblFoundName: TLabel;
    lblFoundEmail: TLabel;
    lblTxt005: TLabel;
    dbgHistory: TDBGrid;
    pnlmanage: TPanel;
    tsManage: TTabSheet;
    DmcustomerCredentials: TDBGrid;
    tmrmenu: TTimer;
    Image1: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    lblReservio: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    lblmotto: TLabel;
    Image2: TImage;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    shpstart: TShape;
    lblstart: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    dbReservations: TDBGrid;
    btnCustomersEdit: TButton;
    btncustomerDelete: TButton;
    btnCustomerPost: TButton;
    Panel5: TPanel;
    Panel6: TPanel;
    pgcCustomer: TPageControl;
    tsCustSignIn: TTabSheet;
    pnlBgCustSignIn: TPanel;
    pnlHdrCustSignIn: TPanel;
    lblHdrCustSignInTitle: TLabel;
    lblHdrCustSignInSub: TLabel;
    pnlHdrCustSignInLine: TPanel;
    lblCustSIKicker: TLabel;
    lblCustSIBrand: TLabel;
    pnlCustSIBrandLine: TPanel;
    lblCustSIMotto: TLabel;
    lblCustSIHours: TLabel;
    pnlCustSignInCard: TPanel;
    pnlCustSignInBar: TPanel;
    lblCustSignInTitle: TLabel;
    lblCustSignInSub: TLabel;
    lblCustSignInTxt1: TLabel;
    edtemail: TEdit;
    lblCustSignInTxt2: TLabel;
    edtCustSignInPass: TEdit;
    lblCustSignInMsg: TLabel;
    pnlCustSignIn: TPanel;
    lblCustOr: TLabel;
    lblCustNew: TLabel;
    pnlCustGoSignUp: TPanel;
    tsCustSignUp: TTabSheet;
    pnlBgCustSignUp: TPanel;
    pnlHdrCustSignUp: TPanel;
    lblHdrCustSignUpTitle: TLabel;
    lblHdrCustSignUpSub: TLabel;
    pnlHdrCustSignUpLine: TPanel;
    lblCustSUKicker: TLabel;
    lblCustSUBrand: TLabel;
    pnlCustSUBrandLine: TPanel;
    lblCustSUMotto: TLabel;
    lblCustSUHours: TLabel;
    pnlCustSignUpCard: TPanel;
    pnlCustSignUpBar: TPanel;
    lblCustSignUpTitle: TLabel;
    lblCustSignUpSub: TLabel;
    lblCustSUTxt1: TLabel;
    edtCustName: TEdit;
    lblCustSUTxt2: TLabel;
    edtPhone: TEdit;
    lblCustSUTxt3: TLabel;
    edtCustEmail: TEdit;
    lblCustSUTxt4: TLabel;
    edtCustPass: TEdit;
    lblCustSUTxt5: TLabel;
    edtCustSUConfirm: TEdit;
    lblCustSignUpMsg: TLabel;
    pnlregister: TPanel;
    lblCustHave: TLabel;
    pnlCustGoSignIn: TPanel;
    tsCustBook: TTabSheet;
    pnlBgCustBook: TPanel;
    pnlHdrCustBook: TPanel;
    lblHdrCustBookTitle: TLabel;
    lblHdrCustBookSub: TLabel;
    pnlHdrCustBookLine: TPanel;
    lblCustWelcome: TLabel;
    pnlCustSignOut: TPanel;
    pnlCustBookCard: TPanel;
    pnlCustBookCardBar: TPanel;
    lblCustBookCardTitle: TLabel;
    lblBkcustname: TLabel;
    lblCustBkContact: TLabel;
    lblCustBkTxt2: TLabel;
    lblCustBkTxt3: TLabel;
    lblCustBkTxt4: TLabel;
    lblCustBkTxt5: TLabel;
    lblCustBkTxt6: TLabel;
    lblCustBkMsg: TLabel;
    dtpResDate: TDateTimePicker;
    cmbTimeSlot: TComboBox;
    cmbDuration: TComboBox;
    sedParty: TSpinEdit;
    cmbTable: TComboBox;
    pnlCustFindTable: TPanel;
    pnlCustSaveBooking: TPanel;
    pnlCustClearBooking: TPanel;
    pnlCustSummary: TPanel;
    pnlCustSummaryBar: TPanel;
    lblCustSummaryTitle: TLabel;
    lblCustSumCapCust: TLabel;
    lblSummCust: TLabel;
    lblCustSumCapDate: TLabel;
    lblSummDate: TLabel;
    lblCustSumCapTime: TLabel;
    lblSummTime: TLabel;
    lblCustSumCapDur: TLabel;
    lblSummDur: TLabel;
    lblCustSumCapParty: TLabel;
    lblSummParty: TLabel;
    lblCustSumCapTable: TLabel;
    lblSummTable: TLabel;
    imgCustBooking: TImage;
    pnlCustsidebar: TPanel;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel8: TPanel;
    pnlSignup: TPanel;
    pnlsignin: TPanel;
    pnlbook: TPanel;
    pnlAdmin: TPanel;
    pnlexit: TPanel;
    Shape7: TShape;
    Label3: TLabel;
    lblphone: TLabel;
    Edit2: TEdit;
    edtbkphone: TEdit;
    tsAdminLogin: TTabSheet;
    pnlBgAdminLogin: TPanel;
    pnlHdrAdminLogin: TPanel;
    lblHdrAdminTitle: TLabel;
    lblHdrAdminSub: TLabel;
    pnlHdrAdminLine: TPanel;
    lblAdminKicker: TLabel;
    lblAdminBrand: TLabel;
    pnlAdminBrandLine: TPanel;
    lblAdminMotto: TLabel;
    pnlAdminLoginCard: TPanel;
    pnlAdminLoginBar: TPanel;
    lblAdminCardTitle: TLabel;
    lblAdminCardSub: TLabel;
    lblAdminPassCap: TLabel;
    edtAdminPass: TEdit;
    lblAdminMsg: TLabel;
    pnlAdminUnlock: TPanel;
    pnlAdminBack: TPanel;
    lblCustSumCapPrice: TLabel;
    lblSummPrice: TLabel;
    memCustInfo: TMemo;
    memCustReceipt: TMemo;

    // 1. FORM & UI SETUP
    procedure FormResize(Sender: TObject);
    procedure tmrmenuTimer(Sender: TObject);
    procedure lblstartClick(Sender: TObject);
    procedure lblstartMouseEnter(Sender: TObject);
    procedure lblstartMouseLeave(Sender: TObject);

    // 2. NAVIGATION (NAVIGATION BAR & BUTTONS)
    procedure pnlNavHomeClick(Sender: TObject);
    procedure pnlNavCustomersClick(Sender: TObject);
    procedure pnlNavExitClick(Sender: TObject);
    procedure pnlNavHomeMouseEnter(Sender: TObject);
    procedure pnlNavHomeMouseLeave(Sender: TObject);
    procedure pnlNavCustomersMouseEnter(Sender: TObject);
    procedure pnlNavCustomersMouseLeave(Sender: TObject);
    procedure pnlNavExitMouseEnter(Sender: TObject);
    procedure pnlNavExitMouseLeave(Sender: TObject);
    procedure pnlmanageMouseEnter(Sender: TObject);
    procedure pnlmanageMouseLeave(Sender: TObject);

    // 3. CUSTOMER AUTHENTICATION (SIGN-UP & SIGN-IN)
    procedure pnlSignupClick(Sender: TObject);
    procedure pnlsigninClick(Sender: TObject);
    procedure pnlCustSignInCardClick(Sender: TObject);
    procedure PNLRegisterClick(Sender: TObject);
    procedure pnlCustSignInClick(Sender: TObject);
    procedure pnlCustSignOutClick(Sender: TObject);
    procedure pnlSignupMouseEnter(Sender: TObject);
    procedure pnlSignupMouseLeave(Sender: TObject);
    procedure pnlsigninMouseEnter(Sender: TObject);
    procedure pnlsigninMouseLeave(Sender: TObject);

    // 4. BOOKING SYSTEM & DASHBOARD
    procedure pnlbookClick(Sender: TObject);
    procedure tsCustBookShow(Sender: TObject);
    procedure btnLookupCustClick(Sender: TObject);
    procedure pnlFindTableClick(Sender: TObject);
    procedure pnlCustSaveBookingClick(Sender: TObject);
    procedure pnlCustClearBookingClick(Sender: TObject);
    procedure pnlbookMouseEnter(Sender: TObject);
    procedure pnlbookMouseLeave(Sender: TObject);

    // 5. ADMIN & DATABASE MANAGEMENT
    procedure pnlAdminClick(Sender: TObject);
    procedure pnlAdminUnlockClick(Sender: TObject);
    procedure pnlAdminBackClick(Sender: TObject);
    procedure PNLFindCustClick(Sender: TObject);
    procedure btnCustomersEditClick(Sender: TObject);
    procedure btncustomerDeleteClick(Sender: TObject);
    procedure btnCustomerPostClick(Sender: TObject);
    procedure pnl_tileTablesClick(Sender: TObject);
    procedure pnlAdminMouseEnter(Sender: TObject);
    procedure pnlAdminMouseLeave(Sender: TObject);
    procedure pnlexitMouseEnter(Sender: TObject);
    procedure pnlexitMouseLeave(Sender: TObject);
    procedure pnlmanageClick(Sender: TObject);

  private
    { Private declarations }
    sphone: string;
    ssearch, sFoundmail: string;
    bsearch: boolean;
    bSignedIn: boolean;
    sUserName, sUserCell, sUserMail: string;

    // Helper functions and procedures
    function ValidSignUp: boolean;
    function ValidSignIn: boolean;
    procedure WriteReceipt;
    procedure SetSignedState(bIn: boolean);
    procedure RefreshDashboard;
    procedure ClearBookingForm;

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

const
  ADMIN_PASSWORD = 'Reservio@2026';

// =============================================================================
// FORM & UI SETUP
// =============================================================================

// resizes page control window when form is resized
procedure TfrmMain.FormResize(Sender: TObject);
begin
  pgcmain.width := ClientWidth;
  pgcmain.Height := ClientHeight;
end;

// moves sidebar menu into view smoothly
procedure TfrmMain.tmrmenuTimer(Sender: TObject);
begin
  pnlSidebar.top := pnlsidebar.top - 10;
  pgcmain.left := pgcmain.left - 10;
  if (pnlSidebar.top <= 0) and (pgcMain.left < 215) then
  begin
    tmrmenu.enabled := false;
  end;
end;

// shows customer sign-up section and sidebar panel
procedure TfrmMain.lblstartClick(Sender: TObject);
begin
  pgcCustomer.activepage := tsCustSignUp;
  pgcCustomer.visible := true;
  pnlCustsidebar.visible := true;
  pnlcustSidebar.align := alright;
end;

// highlights start button shape gold on hover
procedure TfrmMain.lblstartMouseEnter(Sender: TObject);
begin
  shpstart.brush.color := tcolor(rgb(218, 165, 32));
  lblstart.font.color := clwhite;
end;

// restores start button shape to white on mouse leave
procedure TfrmMain.lblstartMouseLeave(Sender: TObject);
begin
  shpstart.brush.color := clwhite;
  lblstart.font.color := tcolor(rgb(218, 165, 32));
end;


// =============================================================================
//  NAVIGATION (NAVIGATION BAR & BUTTONS)
// =============================================================================

procedure TfrmMain.pnlNavHomeClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsHome;
end;

procedure TfrmMain.pnlNavCustomersClick(Sender: TObject);
begin
  pgcMain.ActivePage := tscustomers;
end;

procedure TfrmMain.pnlNavExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.pnlNavHomeMouseEnter(Sender: TObject);
begin
  pnlNavhome.color := tcolor(rgb(218, 165, 32));
end;

procedure TfrmMain.pnlNavHomeMouseLeave(Sender: TObject);
begin
  pnlNavhome.color := tcolor(rgb(43, 31, 25));
end;

procedure TfrmMain.pnlNavCustomersMouseEnter(Sender: TObject);
begin
  pnlNavcustomers.color := tcolor(rgb(218, 165, 32));
end;

procedure TfrmMain.pnlNavCustomersMouseLeave(Sender: TObject);
begin
  pnlNavcustomers.color := tcolor(rgb(43, 31, 25));
end;

procedure TfrmMain.pnlNavExitMouseEnter(Sender: TObject);
begin
  pnlNavexit.color := clred;
end;

procedure TfrmMain.pnlNavExitMouseLeave(Sender: TObject);
begin
  pnlNavexit.color := tcolor(rgb(43, 31, 25));
end;

procedure TfrmMain.pnlmanageClick(Sender: TObject);
begin
pgcMain.ActivePage:=tsManage;
end;

procedure TfrmMain.pnlmanageMouseEnter(Sender: TObject);
begin
  pnlmanage.color := tcolor(rgb(218, 165, 32));
end;

procedure TfrmMain.pnlmanageMouseLeave(Sender: TObject);
begin
  pnlmanage.color := tcolor(rgb(43, 31, 25));
end;


// =============================================================================
//  CUSTOMER AUTHENTICATION (SIGN-UP & SIGN-IN)
// =============================================================================

// check if user filled in sign-up details properly
function TfrmMain.ValidSignUp: boolean;
var
  sName: string;   // holds customer full name
  sPhone: string;  // holds customer phone number
  sMail: string;   // holds customer email address
  i: integer;      // loop counter for character checking
  iAt: integer;    // holds character position of @ symbol
  iDot: integer;   // holds character position of . symbol
begin
  Result := False;
  sName := Trim(edtCustName.Text);
  sPhone := Trim(edtPhone.Text);
  sMail := Trim(edtCustEmail.Text);

  if Pos(' ', sName) = 0 then
  begin
    ShowMessage('Please enter your name AND surname with a space between them');
    Exit;
  end;

  for i := 1 to Length(sName) do
    if not ((sName[i] >= 'A') and (sName[i] <= 'Z') or
            (sName[i] >= 'a') and (sName[i] <= 'z') or
            (sName[i] = ' ') or (sName[i] = '-')) then
    begin
      ShowMessage('Name and surname may only contain letters');
      Exit;
    end;

  if (Length(sPhone) <> 10) or (sPhone[1] <> '0') then
  begin
    ShowMessage('Phone number must be 10 digits and start with 0');
    Exit;
  end;

  for i := 1 to Length(sPhone) do
    if (sPhone[i] < '0') or (sPhone[i] > '9') then
    begin
      ShowMessage('Phone number may only contain digits');
      Exit;
    end;

  iAt := Pos('@', sMail);
  iDot := LastDelimiter('.', sMail);
  if (iAt < 2) or (iDot < iAt + 2) or (iDot = Length(sMail)) or (Pos(' ', sMail) > 0) then
  begin
    ShowMessage('Please enter a valid email, e.g. name@domain.co.za');
    Exit;
  end;

  if Length(edtCustPass.Text) < 6 then
  begin
    ShowMessage('Password must be at least 6 characters');
    Exit;
  end;

  if edtCustPass.Text <> edtCustSUConfirm.Text then
  begin
    ShowMessage('The two passwords do not match');
    Exit;
  end;

  Result := True;
end;

// check inputs for sign-in box
function TfrmMain.ValidSignIn: boolean;
var
  sPhone: string;  // holds entered cell phone number
  sMail: string;   // holds entered email address
  i: integer;      // loop counter for digit check
  iAt: integer;    // holds position of @ character
  iDot: integer;   // holds position of . character
begin
  Result := False;
  sMail := Trim(edtemail.Text);
  sPhone := Trim(Edit2.Text);

  iAt := Pos('@', sMail);
  iDot := LastDelimiter('.', sMail);
  if (iAt < 2) or (iDot < iAt + 2) or (iDot = Length(sMail)) or (Pos(' ', sMail) > 0) then
  begin
    ShowMessage('Please enter a valid email, e.g. name@domain.co.za');
    Exit;
  end;

  if (Length(sPhone) <> 10) or (sPhone[1] <> '0') then
  begin
    ShowMessage('Phone number must be 10 digits and start with 0');
    Exit;
  end;

  for i := 1 to Length(sPhone) do
    if (sPhone[i] < '0') or (sPhone[i] > '9') then
    begin
      ShowMessage('Phone number may only contain digits');
      Exit;
    end;

  if Length(edtCustSignInPass.Text) < 6 then
  begin
    ShowMessage('Password must be at least 6 characters');
    Exit;
  end;

  Result := True;
end;

procedure TfrmMain.pnlSignupClick(Sender: TObject);
begin
  pgcCustomer.activepage := tsCustSignup;
end;

procedure TfrmMain.pnlsigninClick(Sender: TObject);
begin
  pgcCustomer.activepage := tsCustSignIn;
end;

procedure TfrmMain.pnlCustSignInCardClick(Sender: TObject);
begin
  pgcCustomer.activepage := tsCustSignIn;
end;

// adds a new customer to the database after validation
procedure TfrmMain.PNLRegisterClick(Sender: TObject);
var
  sname: string;
  ssurname: string;
  smail: string;
  scustomer: string;
  sphone: string;
  ipos: integer;
  bexists: boolean;
begin
  if not ValidSignUp then exit;

  scustomer := edtcustname.text;
  ipos := pos(' ', scustomer);
  if ipos > 0 then
  begin
    sname := copy(scustomer, 1, ipos - 1);
    ssurname := Copy(scustomer, ipos + 1, Length(scustomer) - ipos);
  end;

  sphone := edtPhone.text;
  smail := edtEmail.text;
  bexists := false;

  with frmbooking do
  begin
    tblManage.first;
    while not tblManage.eof do
    begin
      if (tblManage['CustName'] = sname) and
         (tblManage['CustSurname'] = ssurname) and
         (tblManage['CustCell'] = sphone) and
         (tblManage['Email'] = smail) then
      begin
        bexists := true;
        showmessage('User exists');
        break;
      end;
      tblmanage.next;
    end;

    if bexists = false then
    begin
      tblManage.insert;
      tblManage['CustName'] := sname;
      tblManage['CustSurname'] := ssurname;
      tblManage['CustCell'] := sphone;
      tblManage['Email'] := smail;
      showmessage('Customer has been added to database');
      tblManage.post;
    end;
  end;
end;

// sign in button click logic
procedure TfrmMain.pnlCustSignInClick(Sender: TObject);
var
  sMail: string;
  sCell: string;
  sPass: string;
  bfound: boolean;
begin
  if not ValidSignIn then exit;
  sMail := Trim(edtemail.Text);
  sCell := Trim(Edit2.Text);
  sPass := edtCustSignInPass.Text;
  bfound := False;

  with frmbooking do
  begin
    tblManage.First;
    while not tblManage.Eof do
    begin
      if (tblManage['CustCell'] = sCell) and
         (tblManage['Email'] = sMail) then
      begin
        if tblManage['Password'] <> sPass then
        begin
          ShowMessage('Incorrect password');
          Exit;
        end;

        bfound := True;
        sUserName := tblManage['CustName'] + ' ' + tblManage['CustSurname'];
        sUserCell := sCell;
        sUserMail := tblManage['Email'];
        Break;
      end;

      tblManage.Next;
    end;

    if not bfound then
    begin
      ShowMessage('User does not exist');
      exit;
    end;
  end;

  bSignedIn := True;
  lblBkcustname.Caption := sUserName;
  lblCustBkContact.Caption := 'Contact: ' + sUserMail;
  edtbkphone.Text := sUserCell;
  edtCustSignInPass.Clear;
  ClearBookingForm;
  SetSignedState(True);
  RefreshDashboard;
  ShowMessage('Welcome back ' + sUserName + ' :)');
  pgcCustomer.ActivePage := tsCustBook;
end;

// sign out customer and clear saved inputs
procedure TfrmMain.pnlCustSignOutClick(Sender: TObject);
begin
  bSignedIn := False;
  sUserName := '';
  sUserCell := '';
  sUserMail := '';
  lblBkcustname.Caption := '-';
  lblCustBkContact.Caption := 'Contact: -';
  edtbkphone.Clear;
  edtemail.Clear;
  Edit2.Clear;
  edtCustSignInPass.Clear;
  ClearBookingForm;
  RefreshDashboard;
  SetSignedState(False);
  ShowMessage('You have been signed out');
  pgcCustomer.ActivePage := tsCustSignIn;
end;

procedure TfrmMain.pnlSignupMouseEnter(Sender: TObject);
begin
  pnlSignup.color := clblack;
  pnlSignup.font.Color := clwhite;
end;

procedure TfrmMain.pnlSignupMouseLeave(Sender: TObject);
begin
  pnlSignup.color := clwhite;
  pnlSignup.font.Color := clblack;
end;

procedure TfrmMain.pnlsigninMouseEnter(Sender: TObject);
begin
  pnlSignin.color := clblack;
  pnlSignin.font.Color := clwhite;
end;

procedure TfrmMain.pnlsigninMouseLeave(Sender: TObject);
begin
  pnlSignin.color := clwhite;
  pnlSignin.font.Color := clblack;
end;


// =============================================================================
//  BOOKING SYSTEM & DASHBOARD
// =============================================================================

// calculates price from dropdown and saves receipt to text file
procedure TfrmMain.WriteReceipt;
var
  myFile: TextFile;
  sTable: string;
  sDir: string;
  sFile: string;
  iR: integer;
  iPrice: integer;
begin
  sTable := cmbTable.Text;
  iR := LastDelimiter('R', sTable);
  iPrice := 0;

  if iR > 0 then
    iPrice := StrToInt(Copy(sTable, iR + 1, Length(sTable)));
  lblSummPrice.Caption := 'R' + IntToStr(iPrice) + '.00';

  sDir := 'Receipts\';
  ForceDirectories(sDir);
  sFile := sDir + 'Receipt_' + StringReplace(lblSummCust.Caption, ' ', '_', [rfReplaceAll]) + '.txt';

  AssignFile(myFile, sFile);
  Rewrite(myFile);

  Writeln(myFile, '==============================================');
  Writeln(myFile, '          RESERVIO - TABLE BOOKING');
  Writeln(myFile, '==============================================');
  Writeln(myFile, 'Issued     : ' + DateTimeToStr(Now));
  Writeln(myFile, '----------------------------------------------');
  Writeln(myFile, 'Customer   : ' + lblSummCust.Caption);
  Writeln(myFile, 'Cell       : ' + edtbkphone.Text);
  Writeln(myFile, 'Date       : ' + lblSummDate.Caption);
  Writeln(myFile, 'Time       : ' + lblSummTime.Caption);
  Writeln(myFile, 'Duration   : ' + lblSummDur.Caption);
  Writeln(myFile, 'Party size : ' + lblSummParty.Caption);
  Writeln(myFile, 'Table      : ' + lblSummTable.Caption);
  Writeln(myFile, '----------------------------------------------');
  Writeln(myFile, 'TOTAL DUE  : ' + lblSummPrice.Caption);
  Writeln(myFile, '==============================================');
  Writeln(myFile, 'Please arrive on time. Thank you for choosing Reservio!');

  CloseFile(myFile);

  ShowMessage('Receipt saved to: ' + sFile);
end;

// change label color to green for signed in and red for signed out
procedure TfrmMain.SetSignedState(bIn: boolean);
var
  cCol: TColor;
begin
  if bIn then
  begin
    cCol := TColor(RGB(46, 139, 87));
    lblCustWelcome.Caption := 'Signed in';
  end
  else
  begin
    cCol := TColor(RGB(200, 40, 40));
    lblCustWelcome.Caption := 'Signed out';
  end;
  lblCustWelcome.Transparent := False;
  lblCustWelcome.Color := cCol;
  lblCustWelcome.Font.Color := clWhite;
  pnlCustSignOut.Color := cCol;
  pnlCustSignOut.Font.Color := clWhite;
end;

// clear all labels and input boxes on booking tab
procedure TfrmMain.ClearBookingForm;
begin
  dtpResDate.Date := Date;
  cmbTimeSlot.ItemIndex := -1;
  cmbDuration.ItemIndex := 1;
  sedParty.Value := 2;
  cmbTable.ItemIndex := 0;
  lblCustBkMsg.Caption := '';
  if bSignedIn then
    lblSummCust.Caption := sUserName
  else
    lblSummCust.Caption := '-';
  lblSummDate.Caption := '-';
  lblSummTime.Caption := '-';
  lblSummDur.Caption := '-';
  lblSummParty.Caption := '-';
  lblSummTable.Caption := '-';
  lblSummPrice.Caption := '-';
end;

// loads customer details and bookings into memo box, and reads receipt text file
procedure TfrmMain.RefreshDashboard;
var
  n: integer;
  sFile: string;
  sLine: string;
  myFile: TextFile;
  sResDate: string;
  sTimeSlot: string;
  sTable: string;
  sDuration: string;
  iParty: integer;
begin
  memCustInfo.Lines.Clear;
  memCustReceipt.Lines.Clear;
  if not bSignedIn then
  begin
    memCustInfo.Lines.Add('Sign in to see your details and bookings.');
    Exit;
  end;

  memCustInfo.Lines.Add('MY DETAILS');
  memCustInfo.Lines.Add('Name  : ' + sUserName);
  memCustInfo.Lines.Add('Cell  : ' + sUserCell);
  memCustInfo.Lines.Add('Email : ' + sUserMail);
  memCustInfo.Lines.Add('');
  memCustInfo.Lines.Add('MY BOOKINGS');

  n := 0;
  with frmBooking do
  begin
    tblReservations.First;
    while not tblReservations.Eof do
    begin
      if tblReservations['CustomerName'] = sUserName then
      begin
        inc(n);
        sResDate  := tblReservations['ResDate'];
        sTimeSlot := tblReservations['TimeSlot'];
        sTable    := tblReservations['Table'];
        sDuration := tblReservations['Duration'];
        iParty    := tblReservations['PartySize'];

        memCustInfo.Lines.Add(IntToStr(n) + '. ' + sResDate + '  ' +
          sTimeSlot + '  ' + sTable + '  ' +
          sDuration + '  party of ' + IntToStr(iParty));
      end;
      tblReservations.Next;
    end;
  end;

  if n = 0 then
    memCustInfo.Lines.Add('You have no bookings yet.');

  // read receipt text file using TextFile
  sFile := 'Receipts\Receipt_' + StringReplace(sUserName, ' ', '_', [rfReplaceAll]) + '.txt';

  if FileExists(sFile) then
  begin
    AssignFile(myFile, sFile);
    Reset(myFile);
    while not Eof(myFile) do
    begin
      Readln(myFile, sLine);
      memCustReceipt.Lines.Add(sLine);
    end;
    CloseFile(myFile);
  end
  else
  begin
    memCustReceipt.Lines.Add('No receipt yet. Book a table and your receipt will appear here.');
  end;
end;

procedure TfrmMain.pnlbookClick(Sender: TObject);
begin
  pgcCustomer.activepage := tsCustBook;
end;

procedure TfrmMain.tsCustBookShow(Sender: TObject);
begin
  SetSignedState(bSignedIn);
  RefreshDashboard;
end;

// looks up customer phone number on booking form
procedure TfrmMain.btnLookupCustClick(Sender: TObject);
begin
  bsearch := false;
  ssearch := edtbkPhone.text;
  with frmbooking do
  begin
    tblManage.first;
    while not tblManage.eof do
    begin
      if tblManage['CustCell'] = ssearch then
      begin
        bsearch := true;
        showmessage('Customer found ;)');
        lblBkcustname.Caption := tblManage['CustName'] + ' ' + tblManage['CustSurname'];
        lblsummcust.Caption := tblManage['CustName'] + ' ' + tblManage['CustSurname'];
        break;
      end;
      tblmanage.next;
    end;
    if not bsearch then
      showmessage('User does not exist');
  end;
end;

// checks if table and time slot are available then books
procedure TfrmMain.pnlFindTableClick(Sender: TObject);
var
  breserved: boolean;
  sDate: string;
  dRowDate: TDateTime;
begin
  breserved := false;
  if cmbtimeslot.text = '' then
  begin
    showmessage('Please select a time slot');
    exit;
  end;

  with frmBooking do
  begin
    tblReservations.first;
    while not tblReservations.eof do
    begin
      sDate := Trim(tblReservations['ResDate']);
      if sDate <> '' then
      begin
        dRowDate := StrToDateTime(sDate);
        if (Trunc(dRowDate) = Trunc(dtpResDate.Date)) and
           (tblReservations['TimeSlot'] = cmbTimeSlot.Text) and
           (tblReservations['Table'] = cmbTable.Text) then
        begin
          breserved := true;
          ShowMessage('Sorry please pick a different time slot :(');
          break;
        end;
      end;
      tblreservations.next;
    end;

    if breserved = false then
    begin
      tblreservations.insert;
      tblReservations['ResDate'] := DateToStr(dtpResDate.Date);
      lblSummDate.caption := DateToStr(dtpResDate.Date);
      tblReservations['TimeSlot'] := cmbTimeSlot.text;
      lblSummtime.caption := cmbTimeSlot.text;
      tblReservations['Table'] := cmbTable.Text;
      lblSummTable.Caption := cmbTable.text;
      tblReservations['Duration'] := cmbduration.Text;
      lblSummDur.caption := cmbDuration.text;
      tblReservations['PartySize'] := sedparty.value;
      lblSummParty.caption := IntToStr(sedParty.Value);
      tblReservations['CustomerName'] := lblBkCustName.caption;
      lblSummCust.caption := lblBkCustName.caption;
      tblReservations.post;
      showmessage('You have been booked ' + lblSummCust.caption + ' ,don''t be late :)');
      WriteReceipt;
    end;
  end;
end;

// confirms booking details and refreshes dashboard
procedure TfrmMain.pnlCustSaveBookingClick(Sender: TObject);
begin
  if not bSignedIn then
  begin
    ShowMessage('Please sign in before confirming a booking');
    exit;
  end;
  if (lblSummDate.Caption = '-') or (lblSummTime.Caption = '-') or (lblSummTable.Caption = '-') then
  begin
    ShowMessage('Please press FIND A SUITABLE TABLE first so your booking details are filled in');
    exit;
  end;
  lblCustBkMsg.Caption := 'Booking confirmed for ' + lblSummDate.Caption + ' at ' + lblSummTime.Caption;
  RefreshDashboard;
  ShowMessage('Booking confirmed ' + sUserName + ', your receipt is on your dashboard :)');
end;

procedure TfrmMain.pnlCustClearBookingClick(Sender: TObject);
begin
  ClearBookingForm;
end;

procedure TfrmMain.pnlbookMouseEnter(Sender: TObject);
begin
  pnlbook.color := clblack;
  pnlbook.font.Color := clwhite;
end;

procedure TfrmMain.pnlbookMouseLeave(Sender: TObject);
begin
  pnlbook.color := clwhite;
  pnlbook.font.Color := clblack;
end;


// =============================================================================
//  ADMIN & DATABASE MANAGEMENT
// =============================================================================

procedure TfrmMain.pnlAdminClick(Sender: TObject);
begin
  edtAdminPass.Clear;
  lblAdminMsg.Caption := '';
  pgcCustomer.activepage := tsAdminLogin;
end;

procedure TfrmMain.pnlAdminBackClick(Sender: TObject);
begin
  pgcCustomer.activepage := tsCustSignIn;
end;

// checks password before showing admin controls
procedure TfrmMain.pnlAdminUnlockClick(Sender: TObject);
begin
  if Trim(edtAdminPass.Text) = '' then
  begin
    lblAdminMsg.Caption := 'Please enter the admin password';
    exit;
  end;
  if edtAdminPass.Text <> ADMIN_PASSWORD then
  begin
    lblAdminMsg.Caption := 'Incorrect password, access denied';
    edtAdminPass.Clear;
    exit;
  end;

  tmrmenu.enabled := true;
  pgcCustomer.visible := false;
  pnlCustsidebar.visible := false;
  pgcMain.visible := true;
  pnlSidebar.visible := true;
  pgcmain.activepage := tshome;
  edtAdminPass.Clear;
end;

// searches customer by cell number and displays details
procedure TfrmMain.PNLFindCustClick(Sender: TObject);
begin
  bsearch := false;
  ssearch := edtSearchPhone.text;
  with frmbooking do
  begin
    tblManage.first;
    while not tblManage.eof do
    begin
      if tblManage['CustCell'] = ssearch then
      begin
        bsearch := true;
        showmessage('Customer found ;)');
        lblFoundName.Caption := tblManage['CustName'] + ' ' + tblManage['CustSurname'];
        lblFoundEmail.Caption := tblManage['Email'];
        break;
      end;
      tblmanage.next;
    end;
    if not bsearch then
      showmessage('User does not exist');
  end;
end;

// puts database table in edit mode for selected customer
procedure TfrmMain.btnCustomersEditClick(Sender: TObject);
begin
  with frmBooking do
  begin
    if tblManage.IsEmpty then
    begin
      ShowMessage('There are no customers to edit');
      exit;
    end;
    tblManage.Edit;
    ShowMessage('Change the details in the grid, then press Post to save');
  end;
end;

// deletes selected customer record from database using an InputBox
procedure TfrmMain.btncustomerDeleteClick(Sender: TObject);
var
  sConfirm: string;
  sCustName: string;
begin
  with frmBooking do
  begin
    if tblManage.IsEmpty then
    begin
      ShowMessage('There are no customers to delete');
      exit;
    end;

    sCustName := tblManage['CustName'];
    sConfirm := InputBox('Delete Customer', 'Type YES to delete customer ' + sCustName + ':', '');

    if UpperCase(sConfirm) = 'YES' then
    begin
      tblManage.Delete;
      ShowMessage('Customer has been deleted');
    end;
  end;
end;

// posts edited customer changes to database
procedure TfrmMain.btnCustomerPostClick(Sender: TObject);
begin
  with frmBooking do
  begin
    if tblManage.State in [dsEdit, dsInsert] then
    begin
      tblManage.Post;
      ShowMessage('Changes have been saved');
    end
    else
      ShowMessage('Nothing to post, press Edit first');
  end;
end;



procedure TfrmMain.pnl_tileTablesClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsManage;
end;

procedure TfrmMain.pnlAdminMouseEnter(Sender: TObject);
begin
  pnladmin.color := tcolor(rgb(43, 31, 25));
  pnladmin.font.Color := clwhite;
end;

procedure TfrmMain.pnlAdminMouseLeave(Sender: TObject);
begin
  pnladmin.color := clwhite;
  pnladmin.font.Color := clblack;
end;

procedure TfrmMain.pnlexitMouseEnter(Sender: TObject);
begin
  pnlexit.color := clred;
end;

procedure TfrmMain.pnlexitMouseLeave(Sender: TObject);
begin
  pnlexit.color := clwhite;
end;

end.


