unit EditorForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, JvExControls, JvSpeedButton, ToolWin,
  SynEdit, JvGradientCaption, Menus, SynEditHighlighter, SynHighlighterPas,
  JvStringHolder, CtrlMenuBarButton, JvMenus, StdCtrls, Mask, JvExMask,
  JvSpin, Buttons, CheckLst, ShellApi, ShlObj, ImgList, OleCtrls, SHDocVw,
  IdComponent, IdTCPConnection, IdTCPClient, IdIRC, IdBaseComponent,
  IdAntiFreezeBase, IdAntiFreeze, JvExComCtrls, JvComCtrls, JvCheckTreeView,
  JvExCheckLst, JvCheckListBox;

type
  TForm1 = class(TForm)
    CoolBar1: TCoolBar;
    Panel1: TPanel;
    Panel2: TPanel;
    StartCompile: TJvSpeedButton;
    ModeButton: TJvSpeedButton;
    StatusBar1: TStatusBar;
    statusProgress: TProgressBar;
    Panel3: TPanel;
    Splitter1: TSplitter;
    LeftPanel: TPanel;
    LeftSplitter: TSplitter;
    EditPanel: TPanel;
    JvGradientCaption1: TJvGradientCaption;
    SynPasSyn1: TSynPasSyn;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    localesList: TJvMultiStringHolder;
    LeftPageControl: TPageControl;
    TabSheet1: TTabSheet;
    UserHomeFolder: TTreeView;
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
    PageControl1: TPageControl;
    TabSheet7: TTabSheet;
    buildListBox: TCheckListBox;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    JvSpeedButton4: TJvSpeedButton;
    CtrlMenuBarButton2: TCtrlMenuBarButton;
    Button6: TButton;
    Button7: TButton;
    ImageList1: TImageList;
    Splitter2: TSplitter;
    Panel7: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    NewUserFolder: TSpeedButton;
    TreeView1: TTreeView;
    Splitter3: TSplitter;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    SynEdit3: TSynEdit;
    SynEdit4: TSynEdit;
    Button8: TButton;
    SynEdit2: TSynEdit;
    Splitter4: TSplitter;
    PageControl4: TPageControl;
    TabSheet10: TTabSheet;
    TreeView3: TTreeView;
    TabSheet11: TTabSheet;
    TreeView2: TTreeView;
    Panel8: TPanel;
    MainPageControl: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet_Options: TTabSheet;
    ScrollBox1: TScrollBox;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    JvSpinEdit1: TJvSpinEdit;
    TabSheet6: TTabSheet;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Panel4: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    SynEdit1: TSynEdit;
    Splitter5: TSplitter;
    PageControl5: TPageControl;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    PreviewPanel: TPanel;
    PreviewPageControl: TPageControl;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    WebBrowser1: TWebBrowser;
    TabSheet16: TTabSheet;
    PageControl6: TPageControl;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    Panel5: TPanel;
    sendChatTextEdit: TEdit;
    Button9: TButton;
    Panel6: TPanel;
    Splitter6: TSplitter;
    ListBox2: TListBox;
    Panel9: TPanel;
    ircTopicEdit: TEdit;
    IdAntiFreeze1: TIdAntiFreeze;
    IdIRC1: TIdIRC;
    PageControl7: TPageControl;
    TabSheet19: TTabSheet;
    RichEdit1: TRichEdit;
    Panel10: TPanel;
    Panel11: TPanel;
    ircListBox: TListBox;
    Splitter7: TSplitter;
    PageControl8: TPageControl;
    TabSheet20: TTabSheet;
    ScrollBox2: TScrollBox;
    ircUserName: TEdit;
    ircUserPass: TEdit;
    ircConnectButton: TButton;
    Label5: TLabel;
    Label6: TLabel;
    ircChannelEdit: TEdit;
    ircChannel: TEdit;
    Label7: TLabel;
    ListBox1: TJvCheckListBox;
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
    procedure StartCompileClick(Sender: TObject);
    procedure EditorOptions1Click(Sender: TObject);
    procedure SynEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvSpeedButton1MouseEnter(Sender: TObject);
    procedure JvSpeedButton1MouseLeave(Sender: TObject);
    procedure JvSpeedButton2MouseEnter(Sender: TObject);
    procedure JvSpeedButton2MouseLeave(Sender: TObject);
    procedure StartCompileMouseEnter(Sender: TObject);
    procedure StartCompileMouseLeave(Sender: TObject);
    procedure MenuBarButton_FileMouseEnter(Sender: TObject);
    procedure MenuBarButton_FileMouseLeave(Sender: TObject);
    procedure MenuBarButton_EditMouseEnter(Sender: TObject);
    procedure MenuBarButton_EditMouseLeave(Sender: TObject);
    procedure UserHomeFolderDblClick(Sender: TObject);
    procedure NewUserFolderClick(Sender: TObject);
    procedure UserHomeFolderChange(Sender: TObject; Node: TTreeNode);
    procedure UserHomeFolderClick(Sender: TObject);
    procedure MainPageControlChange(Sender: TObject);
    procedure PreviewPageControlChange(Sender: TObject);
    procedure Options1Click(Sender: TObject);
    procedure ircConnectButtonClick(Sender: TObject);
    procedure IdIRC1CTCPQuery(Sender: TObject; User: TIdIRCUser;
      AChannel: TIdIRCChannel; Command, Args: String;
      var ASuppress: Boolean);
    procedure IdIRC1Message(Sender: TObject; AUser: TIdIRCUser;
      AChannel: TIdIRCChannel; Content: String);
    procedure Button9Click(Sender: TObject);
    procedure IdIRC1List(Sender: TObject; AChans: TStringList;
      APosition: Integer; ALast: Boolean);
    procedure IdIRC1Names(Sender: TObject; AUsers: TIdIRCUsers;
      AChannel: TIdIRCChannel);
  private
    Cv1: TCanvas;
    ircListLimit: Integer;
  public
    procedure ModifyControl(const AControl: TControl; LS: TStrings);
    procedure ExpandTopLevel;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  ErrorBoxForm, InfoBoxForm, AboutBox, InputBox;

function GetShellFolder(CSIDLFolder : integer) : string;
begin
  SetLength(Result, MAX_PATH);
  SHGetSpecialFolderPath(0, PChar(Result), CSIDLFolder, false);
  SetLength(Result, StrLen(PChar(Result)));
  if (Result <> '') then
    Result  := IncludeTrailingBackslash(Result);
end;

procedure GetSubDirectories(const directory : string; list : TStrings) ;
var
  sr : TSearchRec;
begin
  try
    if FindFirst(IncludeTrailingPathDelimiter(directory) + '*.*', faDirectory, sr) < 0 then
    exit
    else
    repeat
      if ((sr.Attr and faDirectory <> 0) and (sr.Name <> '.') and (sr.Name <> '..')) then
      List.Add( sr.Name );
    until FindNext(sr) <> 0;
  finally
    SysUtils.FindClose(sr);
  end;
end;

procedure TForm1.ExpandTopLevel;
var
  i: Integer;
  node: TTreeNode;
begin
  with UserHomeFolder.Items do
  begin
    BeginUpdate;
      node := GetFirstNode;
      while Assigned(node) do
      begin
        node.Expand(False);
        node := node.getNextSibling;
      end;
    EndUpdate;
  end;
end;
procedure TForm1.PopupMenu_File_NewClick(Sender: TObject);
begin
  TabSheet2.Caption := 'Unnamed';
  SynEdit1.Lines.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ErrorBox := TErrorBox.Create(Form1);
  InfoBox  := TInfoBox.Create(Form1);

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
  function CurrentUserName: String;
  var
    UserName: array[0..127] of Char;
    Size:DWord;
  begin
    Size := SizeOf(UserName);
    GetUserName(UserName,Size);
    Result:=UserName;
  end;
begin
  JvGradientCaption1.Active := true;

  UserHomeFolder.Items.GetFirstNode.Text := CurrentUserName;
  ExpandTopLevel;

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
  S1, S2: String;
begin
  if not(OpenDialog1.Execute) then
  begin
    ErrorBox.Text('something went wrong on open file.');
    exit;
  end;

  S1 := OpenDialog1.FileName;
  S2 := ExtractFileName(S1);

  if (Length(S2) < 1)
  or (Length(S2) > 255) then
  begin
    ErrorBox.Text('file name to short, or to long.');
    exit;
  end;

  // Pascal
  if ModeButton.Tag = 1 then
  begin
    if not(ExtractFileExt(S2) = 'pas') then
    begin
      ErrorBox.Text('only .pas files allowed.');
      exit;
    end;
    FS := TFileStream.Create(S1,fmOpenRead);
    try
      FS.ReadBuffer(S1,FS.Size);
      SynEdit1.Lines.Clear;
      SynEdit1.Lines.Add(S1);
    finally
      FS.Free;
    end;
  end;
end;

procedure TForm1.PopupMenu_File_SaveAsClick(Sender: TObject);
begin
  if not(SaveDialog1.Execute) then
  begin
    ErrorBox.Text('something went wrong on saving file.');
    exit;
  end;

  if (Length(SaveDialog1.FileName) < 1)
  or (Length(SaveDialog1.FileName) > 255) then
  begin
    ErrorBox.Text('file name to short, or to long.');
    exit;
  end;

  // Pascal
  if ModeButton.Tag = 1 then
  begin
    if not(ExtractFileExt(SaveDialog1.FileName) = 'pas') then
    begin
      ErrorBox.Text('only .pas files allowed.');
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
  ErrorBox.Free;
  InfoBox.Free;
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
    ErrorBox.Text('something goes wrong at open file.');
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
    ErrorBox.Text('something went wrong at open file:' + #13 +
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
  S1,S2: String;
  SL: TStringList;
begin
  if SynEdit1.Modified then
  begin
    if TabSheet2.Caption = 'Unnamed' then
    begin
      if not(SaveDialog1.Execute) then
      begin
        ErrorBox.Text('something went wrong on save file.');
        exit;
      end;

      S1 := SaveDialog1.FileName;
      S2 := ExtractFileName(s1);

      if FileExists(S1) then
      begin
        if MessageDlg('The file already exists !' + #13 +
        'Would you override the old Version ?',
        mtWarning,mbOKCancel,0) = mrCancel then
        exit;
      end;

      TabSheet2.Caption := S2;

      sl := TStringList.Create;
      sl.Add(SynEdit1.Lines.Text);
      sl.SaveToFile(S1);
      sl.Free;

      SynEdit1.Modified := false;
      exit;
    end;

    S1 := SaveDialog1.FileName;
    S2 := ExtractFileName(s1);

    TabSheet2.Caption := S2;

    sl := TStringList.Create;
    sl.Add(SynEdit1.Lines.Text);
    sl.SaveToFile(S1);
    sl.Free;

    SynEdit1.Modified := false;
    exit;
  end;

  if not(OpenDialog1.Execute) then
  begin
    ErrorBox.Text('something went wrong on open file.');
    exit;
  end;

  S1 := OpenDialog1.FileName;
  S2 := ExtractFileName(s1);

  TabSheet2.Caption := S2;
  SynEdit1.Lines.Clear;
  SynEdit1.Lines.LoadFromFile(S1);
  SynEdit1.Lines.Delete(SynEdit1.Lines.Count - 1);
  SynEdit1.Modified := false;
end;

procedure TForm1.JvSpeedButton2Click(Sender: TObject);
var
  s: String;
  sl: TStrings;
begin
  if not(SynEdit1.Modified) then exit;
  if not(SaveDialog1.Execute) then
  begin
    ErrorBox.Text('something went wrong at open file:' + #13 +
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

procedure TForm1.StartCompileClick(Sender: TObject);
var
  callParser:          function(fileSrc: PChar): BOOL; cdecl;
  callParserGetLine  : function: Integer; cdecl;
  callParserGetLines : function: Integer; cdecl;
  callParserCloseFile: procedure; cdecl;
  callParserError    : procedure(msg: PChar); cdecl;

  Handle : THandle;
  yylines: Integer;
  res: String;

  procedure ParserError(msg: PChar);
  begin
    raise Exception.Create(msg);
  end;
begin
  JvSpeedButton2Click(Sender);
  buildListBox.Items.Clear;

  DateTimeToString(res,'',now);
  buildListBox.Items.Insert(0,res + ': ' + 'initialize...');

  Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parsers.dll'));
  if Handle <> 0 then
  begin
    DateTimeToString(res,'',now);
    buildListBox.Items.Insert(0,res + ': load parsers.dll: OK.');

    callParser          := GetProcAddress(Handle,'_yy_pascal_lex_main');
    callParserCloseFile := GetProcAddress(Handle,'_yy_pascal_lex_close');
    callParserGetLine   := GetProcAddress(Handle,'_yy_pascal_lex_get_line');
    callParserGetLines  := GetProcAddress(Handle,'_yy_pascal_lex_getlines');
    callParserError     := GetProcAddress(Handle,'_yy_pascal_lex_parser_error');

    // hook: yyerror
    if @callParserError <> nil then
    begin
      DateTimeToString(res,'',now);
      buildListBox.Items.Insert(0,
      res + ': ' + 'callParserError init success.');
      callParserError(@ParserError);
    end else
    begin
      DateTimeToString(res,'',now);
      buildListBox.Items.Insert(0,
      res + ': ' + 'callParserError init failed.');
    end;

    if @callParser <> nil then
    begin
      try
        callParser(PChar(TabSheet2.Caption));
        InfoBox.Text('Compile OK' + #13#10 +
        'Lines: ' + IntToStr(callParserGetLines-1));
      except
        on E: Exception do
        begin
          callParserCloseFile;
          ErrorBox.Text('Exception:' + #13 +
          E.Message);
        end;
      end;
    end;

    FreeLibrary(handle);

    DateTimeToString(res,'',now);
    buildListBox.Items.Insert(0,
    res + ': ' + 'parser.dll: closed.');

    Handle := 0;
  end else
  begin
    DateTimeToString(res,'',now);
    buildListBox.Items.Insert(0,res + ': load parsers.dll: FAIL.');
  end;

//    if @callParser <> nil then
//    begin
(*
      if not(callParser(PChar(TabSheet2.Caption))) then
      ShowMessage('error in function call from parser dll');
*)
(*
      if @callParserGetLines <> nil then
      begin
        yylines := callParserGetLines;
        ShowMessage('Lines: ' + IntToStr(yylines));
      end;
*)
//    end;
//  end else
//  ShowMessage('parser.dll error.');
end;

procedure TForm1.EditorOptions1Click(Sender: TObject);
begin
(*
  MainPageControl.Pages[0].TabVisible := false;
  MainPageControl.Pages[1].TabVisible := true;
  MainPageControl.Pages[0].TabVisible := true;
*)
  TabSheet_Options.Visible := true;
  TabSheet_Options.Enabled := true;
  TabSheet_Options.SetFocus;

  MainPageControl.ActivePage := TabSheet_Options;

//  PageControl3.Pages[0].TabVisible := true;
//  TabSheet5.Visible := true;
//  TabSheet5.Enabled := true;
//  TabSheet5.SetFocus;
end;

procedure TForm1.SynEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ssCtrl in Shift then
  begin
    if key = Ord('O') then
    begin
      JvSpeedButton1Click(Sender);
      exit;
    end else
    if key = Ord('S') then
    begin
      JvSpeedButton2Click(Sender);
      exit;
    end;
  end;

  if key = VK_F2 then
  begin
    StartCompileClick(Sender);
  end;
end;

procedure TForm1.JvSpeedButton1MouseEnter(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := 'Open source file ...';
end;

procedure TForm1.JvSpeedButton1MouseLeave(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := '';
end;

procedure TForm1.JvSpeedButton2MouseEnter(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := 'Save Modifications to file.'
end;

procedure TForm1.JvSpeedButton2MouseLeave(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := ''
end;

procedure TForm1.StartCompileMouseEnter(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := 'Run/Start Compiler ...'
end;

procedure TForm1.StartCompileMouseLeave(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := '';
end;

procedure TForm1.MenuBarButton_FileMouseEnter(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := 'File Menue, click to open.';
end;

procedure TForm1.MenuBarButton_FileMouseLeave(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := '';
end;

procedure TForm1.MenuBarButton_EditMouseEnter(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := 'Edit Menue, click to open.';
end;

procedure TForm1.MenuBarButton_EditMouseLeave(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := '';
end;

procedure TForm1.UserHomeFolderDblClick(Sender: TObject);
var
  sl: TStringList;
  S1: String;
begin
  sl := TStringList.Create;
  try
    S1 := UserHomeFolder.Selected.Text;
    ShowMessage(S1);
    GetSubDirectories(GetShellFolder(CSIDL_PERSONAL),sl);
    ErrorBox.Text(sl.Text);
    ExpandTopLevel;
  finally
    sl.Clear;
    sl.Free;
  end;
end;

procedure TForm1.NewUserFolderClick(Sender: TObject);
var
  dirS1: String;
begin
  InputBoxWindow := TInputBoxWindow.Create(Form1);
  try
    InputBoxWindow.ShowModal;

    if Length(Trim(InputBoxWindow.InputLineText)) < 1 then
    begin
      ErrorBox.Text('File name is empty');
    end else
    begin
      dirS1 := GetShellFolder(CSIDL_PERSONAL) +
      InputBoxWindow.InputLineText;

      try
        CreateDir(GetShellFolder(CSIDL_PERSONAL) +
        InputBoxWindow.InputLineText);
      except
        on E: Exception do
        begin
          ErrorBox.Text(
          'File System Error:'         + #13 +
          InputBoxWindow.InputLineText + #13 +
          'could not be created.');
        end;
      end;
    end;
  finally
    InputBoxWindow.Free;
  end;
end;

procedure TForm1.UserHomeFolderChange(Sender: TObject; Node: TTreeNode);
begin
  ExpandTopLevel;
end;

procedure TForm1.UserHomeFolderClick(Sender: TObject);
begin
  ExpandTopLevel;
end;

procedure TForm1.MainPageControlChange(Sender: TObject);
begin
  if MainPageControl.ActivePage.Caption = 'Preview' then
  begin
    EditPanel   .Visible := false;

    PreviewPanel.Parent  := Form1;
    PreviewPanel.Visible := true;
    PreviewPanel.Align := alclient;

    PreviewPageControl.ActivePageIndex := 0;
  end;
end;

procedure TForm1.PreviewPageControlChange(Sender: TObject);
begin
  if PreviewPageControl.ActivePage.Caption = 'Editing' then
  begin
    PreviewPanel.Visible := false;
    EditPanel.Visible    := true;
    MainPageControl.Visible := true;
    MainPageControl.ActivePageIndex := 0;
  end;
end;

procedure TForm1.Options1Click(Sender: TObject);
begin
  TabSheet_Options.Visible   := true;
  MainPageControl.ActivePage := TabSheet_Options;
end;

procedure TForm1.ircConnectButtonClick(Sender: TObject);
var
  ares: array [0..10] of SmallInt;
var
  I: Integer;
  S1: String;
begin
  try
    ircConnectButton.Enabled := false;

    ListBox1.Items.Clear;
    ListBox2.Items.Clear;

    idirc1.Host := 'irc.libera.chat';
    idirc1.Port := 6667;

    idirc1.Username := ircUserName.Text;
    idirc1.Nick     := ircUserName.Text;
    idirc1.Password := ircUserPass.Text;

    idirc1.Connect(10000);
    idirc1.Join(ircChannel.Text);

    // channels
    ircListLimit := 0;
    statusProgress.Max := 50;
    statusProgress.Position := 0;
    idirc1.SendCmd('LIST',ares);

    // users
    idirc1.SendCmd('NAMES ' + ircChannel.Text,ares);
  except
    ErrorBox.Text('connect error');
    ircConnectButton.Enabled := true;
  end;
end;

procedure TForm1.IdIRC1CTCPQuery(Sender: TObject; User: TIdIRCUser;
  AChannel: TIdIRCChannel; Command, Args: String; var ASuppress: Boolean);
begin
  ShowMessage(Command);
end;

procedure TForm1.IdIRC1Message(
  Sender  : TObject;
  AUser   : TIdIRCUser;
  AChannel: TIdIRCChannel;
  Content : String);
var
  S1: String;
begin
  S1 := AUser.Nick;
  S1 := S1 + ': ' + Content;
  RichEdit1.Lines.Add(S1);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  idIRC1.Say(ircChannel.Text, sendChatTextEdit.Text)
end;

procedure TForm1.IdIRC1List(
  Sender   : TObject;
  AChans   : TStringList;
  APosition: Integer;
  ALast    : Boolean);
begin
  statusProgress.Position := ListBox1.Items.Count;
  if ListBox1.Items.Count >= 50 then
  begin
    exit;
  end;
  ListBox1.Items.AddStrings(AChans);
end;

procedure TForm1.IdIRC1Names(
  Sender  : TObject;
  AUsers  : TIdIRCUsers;
  AChannel: TIdIRCChannel);
var
  I: Integer;
begin
  for I := 0 to AUsers.Count - 1 do
  begin
    ListBox2.Items.Add(Ausers.Items[I].Nick);
  end;
end;

end.
