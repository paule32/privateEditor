unit EditorForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, JvExControls, JvSpeedButton, ToolWin,
  SynEdit, JvGradientCaption, Menus, SynEditHighlighter, SynHighlighterPas,
  JvStringHolder, CtrlMenuBarButton, JvMenus, StdCtrls, Mask, JvExMask,
  JvSpin, Buttons, CheckLst;

type
  TForm1 = class(TForm)
    CoolBar1: TCoolBar;
    Panel1: TPanel;
    Panel2: TPanel;
    JvSpeedButton3: TJvSpeedButton;
    ModeButton: TJvSpeedButton;
    StatusBar1: TStatusBar;
    ProgressBar1: TProgressBar;
    Panel3: TPanel;
    Splitter1: TSplitter;
    LeftPanel: TPanel;
    LeftSplitter: TSplitter;
    Panel5: TPanel;
    MainPageControl: TPageControl;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    SynEdit1: TSynEdit;
    JvGradientCaption1: TJvGradientCaption;
    SynPasSyn1: TSynPasSyn;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    localesList: TJvMultiStringHolder;
    LeftPageControl: TPageControl;
    TabSheet1: TTabSheet;
    TreeView1: TTreeView;
    TabSheet3: TTabSheet;
    MenuBarButton_File: TCtrlMenuBarButton;
    MenuBarButton_Edit: TCtrlMenuBarButton;
    MenuBarButton_Tools: TCtrlMenuBarButton;
    MenuBarButton_Help: TCtrlMenuBarButton;
    PopupMenu_File: TJvPopupMenu;
    PopupMenu_File_New: TMenuItem;
    PopupMenu_File_New_Application: TMenuItem;
    PopupMenu_File_New_Library: TMenuItem;
    N7: TMenuItem;
    PopupMenu_File_New_Other: TMenuItem;
    PopupMenu_File_Open: TMenuItem;
    N1: TMenuItem;
    PopupMenu_File_Save: TMenuItem;
    PopupMenu_File_SaveAs: TMenuItem;
    N2: TMenuItem;
    PopupMenu_File_Exit: TMenuItem;
    PopupMenu_Edit: TJvPopupMenu;
    PopupMenu_Edit_Undo: TMenuItem;
    N3: TMenuItem;
    PopupMenu_Edit_SelAll: TMenuItem;
    N5: TMenuItem;
    PopupMenu_Edit_Cut: TMenuItem;
    PopupMenu_Edit_Copy: TMenuItem;
    PopupMenu_Edit_Paste: TMenuItem;
    N4: TMenuItem;
    PopupMenu_Edit_Delete: TMenuItem;
    PopupMenu_Help: TJvPopupMenu;
    PopupMenu_Help_Help: TMenuItem;
    N6: TMenuItem;
    PopupMenu_Help_About: TMenuItem;
    PopupMenu_Mode: TJvPopupMenu;
    Pascal1: TMenuItem;
    dBASE1: TMenuItem;
    PopupMenu_Tools: TJvPopupMenu;
    PopupMenu_Tools_Language: TMenuItem;
    PopupMenu_Tools_Language_English: TMenuItem;
    PopupMenu_Tools_Language_German: TMenuItem;
    CtrlMenuBarButton1: TCtrlMenuBarButton;
    PopupMenu_Project: TJvPopupMenu;
    MenuItem1: TMenuItem;
    PascalC1: TMenuItem;
    FromPascaltoJavaScript1: TMenuItem;
    FromPascaltoAsmJit1: TMenuItem;
    N8: TMenuItem;
    FromCtoPascal1: TMenuItem;
    N9: TMenuItem;
    Options1: TMenuItem;
    N10: TMenuItem;
    AddtoTemplateLibrary1: TMenuItem;
    AddNewProject1: TMenuItem;
    N11: TMenuItem;
    IDE1: TMenuItem;
    EnvironmentOptions1: TMenuItem;
    EditorOptions1: TMenuItem;
    ConfigureTools1: TMenuItem;
    N12: TMenuItem;
    TabSheet_Options: TTabSheet;
    ScrollBox1: TScrollBox;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    JvSpinEdit1: TJvSpinEdit;
    Label1: TLabel;
    CheckBox3: TCheckBox;
    TabSheet6: TTabSheet;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    Panel4: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet7: TTabSheet;
    CheckListBox1: TCheckListBox;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    JvSpeedButton4: TJvSpeedButton;
    CtrlMenuBarButton2: TCtrlMenuBarButton;
    procedure PopupMenu_File_NewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PopupMenu_File_ExitClick(Sender: TObject);
    procedure Pascal1Click(Sender: TObject);
    procedure dBASE1Click(Sender: TObject);
    procedure PopupMenu_File_OpenClick(Sender: TObject);
    procedure PopupMenu_File_SaveAsClick(Sender: TObject);
    procedure PopupMenu_Tools_Language_EnglishClick(Sender: TObject);
    procedure PopupMenu_Tools_Language_GermanClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PopupMenu_Help_AboutClick(Sender: TObject);
    procedure JvSpeedButton3Click1(Sender: TObject);
    procedure JvSpeedButton2Click2(Sender: TObject);
    procedure JvSpeedButton1Click(Sender: TObject);
    procedure JvSpeedButton2Click(Sender: TObject);
    procedure JvSpeedButton3Click(Sender: TObject);
    procedure EditorOptions1Click(Sender: TObject);
    procedure SynEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Cv1: TCanvas;
  public
    procedure ModifyControl(const AControl: TControl; LS: TStrings);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  AboutBox;

procedure TForm1.PopupMenu_File_NewClick(Sender: TObject);
begin
  TabSheet2.Caption := 'Unnamed';
  SynEdit1.Lines.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SynEdit1.Lines.Clear;

  // canvas for TextWidth:
  Cv1 := TCanvas.Create;
  Cv1.Handle := GetDC(Handle);
  Cv1.Font := TFont.Create;
  Cv1.Font.Name  := 'Consolas';
  Cv1.Font.Size  := 10;
  Cv1.Font.Color := clRed;

  MainPageControl.Pages[1].TabVisible := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  JvGradientCaption1.Active := true;

  TabSheet2.Caption := 'Unnamed';
  TabSheet3.Caption := 'Project';

  LeftPageControl.ActivePage := TabSheet1;
  MainPageControl.ActivePage := TabSheet2;

  SynEdit1.SetFocus;
end;

procedure TForm1.PopupMenu_File_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Pascal1Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: Pascal';
  ModeButton.Tag     := 1;
end;

procedure TForm1.dBASE1Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: dBASE';
  ModeButton.Tag     := 2;
end;

procedure TForm1.PopupMenu_File_OpenClick(Sender: TObject);
var
  FS: TFileStream;
  S: String;
begin
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something went wrong on open file.');
    exit;
  end;

  if (Length(OpenDialog1.FileName) < 1)
  or (Length(OpenDialog1.FileName) > 255) then
  begin
    ShowMessage('file name to short, or to long.');
    exit;
  end;

  // Pascal
  if ModeButton.Tag = 1 then
  begin
    if not(ExtractFileExt(OpenDialog1.FileName) = 'pas') then
    begin
      ShowMessage('only .pas files allowed.');
      exit;
    end;
    FS := TFileStream.Create(OpenDialog1.FileName,fmOpenRead);
    try
      FS.ReadBuffer(S,FS.Size);
      SynEdit1.Lines.Clear;
      SynEdit1.Lines.Add(S);
    finally
      FS.Free;
    end;
  end;
end;

procedure TForm1.PopupMenu_File_SaveAsClick(Sender: TObject);
begin
  if not(SaveDialog1.Execute) then
  begin
    ShowMessage('something went wrong on saving file.');
    exit;
  end;

  if (Length(SaveDialog1.FileName) < 1)
  or (Length(SaveDialog1.FileName) > 255) then
  begin
    ShowMessage('file name to short, or to long.');
    exit;
  end;

  // Pascal
  if ModeButton.Tag = 1 then
  begin
    if not(ExtractFileExt(SaveDialog1.FileName) = 'pas') then
    begin
      ShowMessage('only .pas files allowed.');
      exit;
    end;
  end;
end;

procedure TForm1.ModifyControl(const AControl: TControl; LS: TStrings);
var
  I: Integer;
  NS, TS: TStrings;
  S1, S2, S3: String;
  P1: Integer;
  procedure IterateMyPopup(AMenu: TMenuItem; SL: TStrings);
  var
    K, L: Integer;
  begin
    for K := 0 to AMenu.Count - 1 do
    begin
      for L := 0 to SL.Count - 1 do
      begin
        S1 := SL.Strings[L];
        P1 := Pos('=',S1);

        if P1 >= 0 then
        begin
          S2 := Copy(S1,0,P1-1);
          S3 := Copy(S1,  P1+1,255);
        end;

        if S2 = AMenu[K].Name then
        begin
          AMenu[K].Caption := S3;
          IterateMyPopup(AMenu[K],LS);
        end;
      end;
    end;
  end;
begin
  if AControl = nil then Exit;
  if AControl is TWinControl then
  begin
    for i := 0 to TWinControl(AControl).ControlCount-1 do
    ModifyControl(TWinControl(AControl).Controls[i], LS);
  end;

  NS := TStringList.Create;
  NS.Delimiter := '=';

  TS := TStringList.Create;
  TS.Delimiter := '=';

  IterateMyPopup(PopupMenu_File   .Items,LS);
  IterateMyPopup(PopupMenu_Edit   .Items,LS);
  IterateMyPopup(PopupMenu_Project.Items,LS);
  IterateMyPopup(PopupMenu_Tools  .Items,LS);
  IterateMyPopup(PopupMenu_Help   .Items,LS);

  for I := 0 to LS.Count - 1 do
  begin
    S1 := LS.Strings[I];
    P1 := Pos('=',S1);
    if P1 >= 0 then
    begin
      S2 := Copy(S1,0,P1-1);
      S3 := Copy(S1,  P1+1,255);
    end;

    if S2 = AControl.Name then
    begin
      if AControl is TCtrlMenuBarButton then
      begin
        TCtrlMenuBarButton(AControl).Caption := S3;
        TCtrlMenuBarButton(AControl).Width := Cv1.TextWidth(S3)+10;
      end;
    end;
  end;

  NS.Free;
end;

procedure TForm1.PopupMenu_Tools_Language_EnglishClick(Sender: TObject);
var
  LS: TStrings;
begin
  LS := localesList.StringsByName['ENG'];
  LS.Delimiter := '|';
  ModifyControl(Form1,LS);
end;

procedure TForm1.PopupMenu_Tools_Language_GermanClick(Sender: TObject);
var
  LS: TStrings;
begin
  LS := localesList.StringsByName['DEU'];
  LS.Delimiter := '|';
  ModifyControl(Form1,LS);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Cv1.Free;
  Cv1 := nil;
end;

procedure TForm1.PopupMenu_Help_AboutClick(Sender: TObject);
begin
  OKRightDlg := TOKRightDlg.Create(Form1);
  OKRightDlg.ShowModal;
  OKRightDlg.Free;
end;

procedure TForm1.JvSpeedButton3Click1(Sender: TObject);
begin
  if SynEdit1.Modified then
  JvSpeedButton2Click(Sender);

  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something goes wrong at open file.');
    exit
  end;
  SynEdit1.Lines.Clear;
  SynEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
  SynEdit1.Lines.Delete(SynEdit1.Lines.Count - 1);

  TabSheet2.Caption := OpenDialog1.FileName;

  MainPageControl.ActivePage := TabSheet2;
  SynEdit1.SetFocus;
end;

procedure TForm1.JvSpeedButton2Click2(Sender: TObject);
begin
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something went wrong at open file:' + #13 +
    OpenDialog1.FileName);
    exit;
  end;

  if TabSheet2.Caption = 'Unnamed' then
  TabSheet2.Caption := OpenDialog1.FileName;

  SynEdit1.Lines.SaveToFile(OpenDialog1.FileName);
  SynEdit1.Modified := false;
end;

procedure TForm1.JvSpeedButton1Click(Sender: TObject);
var
  S: String;
  SL: TStringList;
begin
  if SynEdit1.Modified then
  begin
    if TabSheet2.Caption = 'Unnamed' then
    begin
      if not(SaveDialog1.Execute) then
      begin
        ShowMessage('something went wrong on save file.');
        exit;
      end else
      begin
        if FileExists(SaveDialog1.FileName) then
        begin
          if MessageDlg('The file already exists !' + #13 +
          'Would you override the old Version ?',
          mtWarning,mbOKCancel,0) = mrCancel then
          exit;
        end;
        TabSheet2.Caption := SaveDialog1.FileName;
        S := SynEdit1.Lines.Text;
        sl := TStringList.Create;
        sl.Add(S);
        sl.SaveToFile(SaveDialog1.FileName);
        sl.Free;
        //SynEdit1.Lines.SaveToFile(SaveDialog1.FileName);
        SynEdit1.Modified := false;
        exit;
      end;
    end else
    begin
      TabSheet2.Caption := SaveDialog1.FileName;
      S := SynEdit1.Lines.Text;
      sl := TStringList.Create;
      sl.Add(S);
      sl.SaveToFile(SaveDialog1.FileName);
      sl.Free;
      //SynEdit1.Lines.SaveToFile(SaveDialog1.FileName);
      SynEdit1.Modified := false;
      exit;
    end;
  end else
  begin
    if not(OpenDialog1.Execute) then
    begin
      ShowMessage('something went wrong on open file.');
      exit;
    end;
    TabSheet2.Caption := OpenDialog1.FileName;
    SynEdit1.Lines.Clear;
    SynEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
    SynEdit1.Lines.Delete(SynEdit1.Lines.Count - 1);
    SynEdit1.Modified := false;
    exit;
  end;
end;

procedure TForm1.JvSpeedButton2Click(Sender: TObject);
var
  s: String;
  sl: TStrings;
begin
  if not(SynEdit1.Modified) then exit;
  if not(SaveDialog1.Execute) then
  begin
    ShowMessage('something went wrong at open file:' + #13 +
    SaveDialog1.FileName);
    exit;
  end else
  begin
    if TabSheet2.Caption = 'Unnamed' then
    TabSheet2.Caption := SaveDialog1.FileName;
    S := SynEdit1.Lines.Text;
    sl := TStringList.Create;
    sl.Add(S);
    sl.SaveToFile(SaveDialog1.FileName);
    sl.Free;
    //SynEdit1.Lines.SaveToFile(SaveDialog1.FileName);
    SynEdit1.Modified := false;
  end;
end;

procedure TForm1.JvSpeedButton3Click(Sender: TObject);
var
  callParser:         function(fileSrc: PChar): BOOL; cdecl;
  callParserGetLines: function: Integer; cdecl;

  Handle : THandle;
  yylines: Integer;
begin
  JvSpeedButton2Click(Sender);
  ShowMessage('xxxxx');

  Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parsers.dll'));
  if Handle <> 0 then
  begin
    @callParser         := GetProcAddress(Handle,'_yy_pascal_lex_main');
    @callParserGetLines := GetProcAddress(Handle,'_yy_pascal_lex_getlines');
    if @callParser <> nil then
    begin
      if not(callParser(PChar(TabSheet2.Caption))) then
      ShowMessage('error in function call from parser dll');

      if @callParserGetLines <> nil then
      begin
        yylines := callParserGetLines;
        ShowMessage('Lines: ' + IntToStr(yylines));
      end;
    end;
    if Handle <> 0 then
    begin
      FreeLibrary(handle);
      Handle := 0;
    end;
  end else
  ShowMessage('parser.dll error.');
end;

procedure TForm1.EditorOptions1Click(Sender: TObject);
begin
  MainPageControl.Pages[0].TabVisible := false;
  MainPageControl.Pages[1].TabVisible := true;
  MainPageControl.Pages[0].TabVisible := true;
  TabSheet_Options.Visible := true;
  TabSheet_Options.Enabled := true;
  TabSheet_Options.SetFocus;
  PageControl3.Pages[0].TabVisible := true;
  TabSheet5.Visible := true;
  TabSheet5.Enabled := true;
  TabSheet5.SetFocus;
end;

procedure TForm1.SynEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ssCtrl in Shift then
  begin
    if key = Ord('O') then
    begin
      JvSpeedButton1Click(Sender);
    end else
    if key = Ord('S') then
    begin
      JvSpeedButton2Click(Sender);
    end;
  end;
end;

end.
