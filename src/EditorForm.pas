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
  JvExCheckLst, JvCheckListBox, JvExButtons, JvBitBtn, JvExStdCtrls,
  JvButton, JvCtrls, JvComponentBase, Console, Grids, ValEdit,
  JvCombobox, JvDesignSurface, JvDesignUtils, JvInspector, JvInterpreter,
  JvExExtCtrls, JvExtComponent, JvPanel, TntExtCtrls, TntStdCtrls,
  TntComCtrls, DB, DBTables;

type
  TMyTableListBox = class(TListBox)
  end;

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
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    JvSpeedButton4: TJvSpeedButton;
    CtrlMenuBarButton2: TCtrlMenuBarButton;
    ImageList1: TImageList;
    Splitter3: TSplitter;
    PageControl2: TJvPageControl;
    TabSheet4: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    SynEdit3: TSynEdit;
    SynEdit4: TSynEdit;
    SynEdit2: TSynEdit;
    Splitter4: TSplitter;
    PageControl4: TPageControl;
    TabSheet10: TTabSheet;
    TreeView3: TTreeView;
    TabSheet11: TTabSheet;
    TreeView2: TTreeView;
    Panel8: TPanel;
    Splitter5: TSplitter;
    PreviewPanel: TPanel;
    PreviewPageControl: TPageControl;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    WebBrowser1: TWebBrowser;
    IdAntiFreeze1: TIdAntiFreeze;
    IdIRC1: TIdIRC;
    MainPageControl: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet_Options: TTabSheet;
    ScrollBox1: TScrollBox;
    Panel4: TPanel;
    Button3: TJvImgBtn;
    Button4: TJvImgBtn;
    Button5: TJvImgBtn;
    TabSheet13: TTabSheet;
    TabSheet16: TTabSheet;
    PageControl1: TJvPageControl;
    TabSheet7: TTabSheet;
    Panel12: TPanel;
    buildListBox: TCheckListBox;
    Button6: TJvImgBtn;
    Button7: TJvImgBtn;
    Button8: TJvImgBtn;
    PageControl3: TJvPageControl;
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
    Button1: TJvImgBtn;
    Button2: TJvImgBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    heme1: TMenuItem;
    light1: TMenuItem;
    dark1: TMenuItem;
    PageControl6: TJvPageControl;
    TabSheet17: TTabSheet;
    Splitter6: TSplitter;
    Panel5: TPanel;
    sendChatTextEdit: TEdit;
    Button9: TJvImgBtn;
    Panel6: TPanel;
    Panel9: TPanel;
    ircTopicEdit: TEdit;
    PageControl7: TJvPageControl;
    TabSheet19: TTabSheet;
    ircRichEdit: TRichEdit;
    ListBox2: TListBox;
    TabSheet18: TTabSheet;
    Splitter7: TSplitter;
    Panel10: TPanel;
    ircChannelEdit: TEdit;
    Panel11: TPanel;
    ircListBox: TListBox;
    PageControl8: TJvPageControl;
    TabSheet20: TTabSheet;
    ScrollBox2: TScrollBox;
    ircLabelNick: TLabel;
    ircLabelPassword: TLabel;
    ircLabelChannel: TLabel;
    ircUserName: TEdit;
    ircUserPass: TEdit;
    ircChannel: TEdit;
    PageControl5: TJvPageControl;
    TabSheet12: TTabSheet;
    ircConnectButton: TJvImgBtn;
    TabSheet22: TTabSheet;
    DesignPanelPage: TPanel;
    PageControl9: TPageControl;
    TabSheet21: TTabSheet;
    ConsoleTabSheet: TTabSheet;
    ScrollBox5: TScrollBox;
    Console1: TConsole;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ColorDialog1: TColorDialog;
    JvInterpreterProgram1: TJvInterpreterProgram;
    TabSheet24: TTabSheet;
    ScrollBox6: TScrollBox;
    C64Screen: TTntRichEdit;
    C64ScreenTimer: TTimer;
    LeftPageControl: TJvPageControl;
    TabSheet1: TTabSheet;
    Splitter2: TSplitter;
    Splitter8: TSplitter;
    UserHomeFolder: TTreeView;
    Panel7: TPanel;
    Splitter9: TSplitter;
    Memo1: TMemo;
    Panel13: TPanel;
    JvComboBox1: TJvComboBox;
    PageControl10: TPageControl;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    EventMethodeListBox: TValueListEditor;
    PageControl11: TPageControl;
    TabSheet27: TTabSheet;
    DesignerIconListView: TListView;
    TabSheet3: TTabSheet;
    N13: TMenuItem;
    C64BASIC1: TMenuItem;
    JvInspector1: TJvInspector;
    TabSheet28: TTabSheet;
    TabSheet29: TTabSheet;
    ScrollBox8: TScrollBox;
    Database1: TDatabase;
    DatabaseComboBox: TJvComboBox;
    Session1: TSession;
    PageControl12: TPageControl;
    TabSheet30: TTabSheet;
    SqlScrollBox: TScrollBox;
    PaintBox1: TPaintBox;
    PageControl13: TPageControl;
    TabSheet31: TTabSheet;
    SynEdit1: TSynEdit;
    PageControl14: TPageControl;
    TabSheet32: TTabSheet;
    ScrollBox3: TScrollBox;
    PageControl15: TPageControl;
    TabSheet23: TTabSheet;
    StringGrid1: TStringGrid;
    Panel14: TPanel;
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    Splitter10: TSplitter;
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
    procedure dark1Click(Sender: TObject);
    procedure light1Click(Sender: TObject);
    procedure PageControl9Change(Sender: TObject);
    procedure Console1DblClick(Sender: TObject);
    procedure SynEdit1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SynEdit1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure JvInspector1BeforeEdit(Sender: TObject;
      Item: TJvCustomInspectorItem; Edit: TCustomEdit);
    procedure C64ScreenKeyPress(Sender: TObject; var Key: Char);
    procedure C64ScreenTimerTimer(Sender: TObject);
    procedure DesignerIconListViewMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure JvInspector1BeforeSelection(Sender: TObject;
      NewItem: TJvCustomInspectorItem; var Allow: Boolean);
    procedure JvInspector1ItemDoubleClicked(Sender: TObject;
      Item: TJvCustomInspectorItem);
    procedure JvInspector1ItemValueChanged(Sender: TObject;
      Item: TJvCustomInspectorItem);
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure PaintBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DatabaseComboBoxChange(Sender: TObject);
  private
    Cv1: TCanvas;
    ircListLimit: Integer;
  public

    C64ScreenMap: Array [1..25, 1..40] of WideChar;
    C64ScreenCursor: TPoint;
    C64ScreenCursorBlink: Integer;

    TableListBox: TMyTableListBox;
    Form: TForm;

    procedure TableListBox_MouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift : TShiftState;
      X,  Y : Integer);
    procedure ModifyControl(const AControl: TControl; LS: TStrings);
    procedure ExpandTopLevel;
    procedure JvDesignPanelPaint(Sender: TObject);
    procedure ItemClick(Sender: TObject);
    function WriteToC64Screen(X,Y: Integer; AString: WideString): Integer;
    function PutToC64Screen  (X,Y: Integer; AChar: Char): Integer;
  end;

var
  Form1: TForm1;

const
  sLineBreak = {$IFDEF LINUX} AnsiChar(#10) {$ENDIF}
               {$IFDEF MSWINDOWS} AnsiString(#13#10) {$ENDIF};
implementation

{$R *.dfm}

uses
  ErrorBoxForm, InfoBoxForm, AboutBox, InputBox, DesignerFrame,
  JvDesignImp;

var
  DFrame : TFrame1;

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
  TabSheet31.Caption := 'Unnamed';
  SynEdit1.Lines.Clear;
end;

procedure TForm1.JvDesignPanelPaint(Sender: TObject);
begin
end;

procedure PascalAdapter_WriteLn(var Value: Variant; Args: TJvInterpreterArgs);
begin
  Form1.Console1.WriteLn(VarToStr(Args.Values[0]));
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I         : Integer;
  InspCat   : TJvInspectorCustomCategoryItem;
  TableList : TStringList;
  SomeColor : TColor;
  xpos, ypos: Integer;
begin
  ErrorBox := TErrorBox.Create(Form1);
  InfoBox  := TInfoBox.Create(Form1);

  ypos := 0;
  xpos := 0;

  // fill C64ScreenMap[dx,dy] with #32
  while (true) do
  begin
    if ypos >= 25 then
    break;
    inc(ypos);
    while (true) do
    begin
      if xpos >= 40 then
      begin
        xpos := 0;
        inc(ypos);
      end;
      if ypos >= 25 then
      break;
      inc(xpos);
      C64ScreenMap[ypos, xpos] := WideChar($E000 + Ord(' '));
    end;
  end;
  C64ScreenCursorBlink := 0;

  DFrame := TFrame1.Create(ScrollBox3);
  DFrame.Parent  := ScrollBox3;
  DFrame.Align   := alClient;
  DFrame.Visible := true;
  DFrame.count   := 1;

  DFrame.JvDesignPanel1.Caption := '';
  DFrame.JvDesignSurface1.Active := true;

  DFrame.JvDesignPanel1.Active    := true;
  DFrame.JvDesignPanel1.Color     := clBtnFace;
  DFrame.JvDesignPanel1.DrawRules := false;
  DFrame.JvDesignPanel1.OnPaint   := DFrame.JvDesignPanel1Paint;

  SynEdit1.Lines.Clear;

  // canvas for TextWidth:
  Cv1 := TCanvas.Create;
  Cv1.Handle := GetDC(Handle);
  Cv1.Font := TFont.Create;
  Cv1.Font.Name  := 'Consolas';
  Cv1.Font.Size  := 10;
  Cv1.Font.Color := clRed;

  MainPageControl.Pages[1].TabVisible := false;

  with GlobalJvInterpreterAdapter do
  begin
    AddFunction('dummy', 'WriteLn', PascalAdapter_WriteLn, 1, [varString], varString);
  end;

  EventMethodeListBox.InsertRow('Caption','Text1',true);
  EventMethodeListBox.InsertRow('Height' ,'0'    ,true);
  EventMethodeListBox.InsertRow('Left'   ,'0'    ,true);
  EventMethodeListBox.InsertRow('Top'    ,'0'    ,true);
  EventMethodeListBox.InsertRow('Width'  ,'0'    ,true);

  EventMethodeListBox.InsertRow('Name'   ,'ObjectName',true);

  // get alias/tables
  DataBaseComboBox.Items.Clear;

  Session1.Open;
  Session1.GetAliasNames(DataBaseComboBox.Items);

  TableListBox := TMyTableListBox.Create(TabSheet12);
  TableListBox.Parent := TabSheet12;
  TableListBox.Align  := alClient;
  TableListBox.Items.Clear;
  TableListBox.OnMouseDown := TableListBox_MouseDown;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  I: Integer;

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

  TabSheet31.Caption := 'Unnamed';
  TabSheet3 .Caption := 'Project';

  LeftPageControl.ActivePage := TabSheet1;
  MainPageControl.ActivePage := TabSheet2;


  WriteToC64Screen(5,2,'**** COMMODORE 64 BASIC V2 ****');
  WriteToC64Screen(2,4,'64K RAM SYSTEM  38911 BASIC BYTES FREE');
  WriteToC64Screen(1,6,'READY.');

  C64ScreenCursor.X := 1;
  C64ScreenCursor.Y := 7;

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
begin
  JvSpeedButton1Click(Sender);
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

  Database1.Close;
  Database1.Free;

  Session1.Close;
  Session1.Free;

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

  TabSheet31.Caption := ExtractFileName(OpenDialog1.FileName);

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

  if TabSheet31.Caption = 'Unnamed' then
  TabSheet31.Caption := OpenDialog1.FileName;

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
    if TabSheet31.Caption = 'Unnamed' then
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

      TabSheet31.Caption := S2;

      sl := TStringList.Create;
      sl.Add(SynEdit1.Lines.Text);
      sl.SaveToFile(S1);
      sl.Free;

      SynEdit1.Modified := false;
      exit;
    end;

    if not(SaveDialog1.Execute) then
    begin
      ErrorBox.Text('something went wrong on save file.');
      exit;
    end;

    S1 := SaveDialog1.FileName;
    S2 := ExtractFileName(s1);

    TabSheet31.Caption := S2;

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

  TabSheet31.Caption := S2;
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
    if TabSheet31.Caption = 'Unnamed' then
    TabSheet31.Caption := SaveDialog1.FileName;
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

  MainPageControl.ActivePage := ConsoleTabSheet;
  Console1DblClick(Sender);
  Console1.SetFocus;

// TODO: parser (below):
JvInterpreterProgram1.Pas.Text := String(SynEdit1.Text);
JvInterpreterProgram1.Run;
exit;

// TODO: parser:
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
        callParser(PChar(TabSheet31.Caption));
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
  C64ScreenTimer.Enabled := false;
  
  if MainPageControl.ActivePage.Caption = 'Preview' then
  begin
    EditPanel   .Visible := false;

    PreviewPanel.Parent  := Form1;
    PreviewPanel.Visible := true;
    PreviewPanel.Align := alclient;

    PreviewPageControl.ActivePageIndex := 0;
  end else
  if MainPageControl.ActivePage.Caption = 'C-64 Display' then
  begin
    C64ScreenTimer.Enabled := true;
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

//    ListBox1.Items.Clear;
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
  ircRichEdit.Lines.Add(S1);
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
(* chat todo !
  statusProgress.Position := ListBox1.Items.Count;
  if ListBox1.Items.Count >= 50 then
  begin
    exit;
  end;
  ListBox1.Items.AddStrings(AChans);
*)
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

procedure TForm1.dark1Click(Sender: TObject);
begin
  Form1.Color := clGray;
  CoolBar1.Color := clGray;

  MenuBarButton_File .Font.Color := clWhite;
  MenuBarButton_Edit .Font.Color := clWhite;
  MenuBarButton_Tools.Font.Color := clWhite;
  MenuBarButton_Help .Font.Color := clWhite;
  CtrlMenuBarButton1 .Font.Color := clWhite;

  Panel1 .Color := clGray;
  Panel2 .Color := clGray;
  Panel3 .Color := clGray;
  Panel7 .Color := clGray;
  Panel8 .Color := clGray;
  Panel10.Color := clGray;
  Panel11.Color := clGray;
  Panel12.Color := clGray;

  JvSpeedButton1.Color := clGray;
  JvSpeedButton2.Color := clGray;
  JvSpeedButton4.Color := clGray;
  StartCompile.Color := clGray;
  StatusBar1.Color := clGray;

  PageControl1.Color := clGray;
  PageControl2.Color := clGray;
  PageControl3.Color := clGray;
  PageControl5.Color := clGray;
  PageControl6.Color := clGray;
  PageControl7.Color := clGray;
  PageControl8.Color := clGray;

  sendChatTextEdit.Color := clYellow;

//  ListBox1.Color := clSilver;
//  ListBox1.Font.Color := clBlack;

  ListBox2.Color := clSilver;
  ListBox2.Font.Color := clBlack;

  BuildListBox.Color := clSilver;
  BuildListBox.Font.Color := clBlack;

  UserHomeFolder.Color := clSilver;
  UserHomeFolder.Font.Color := clBlack;

//  TreeView1.Color := clSilver;
//  TreeView1.Font.Color := clBlack;
//  TreeView3.Color := clSilver;
//  TreeView3.Font.Color := clBlack;

  LeftPageControl.Color := clGray;
  ScrollBox1.Color := clGray;

  ircChannelEdit.Color := clYellow;
  ircUserName.Color := clYellow;
  ircUserPass.Color := clYellow;
  ircChannel.Color := clYellow;

  ircLabelNick    .Font.Color := clWhite;
  ircLabelPassword.Font.Color := clWhite;
  ircLabelChannel .Font.Color := clWhite;

  ircListBox.Color := clSilver;
  ircListBox.Font.Color := clBlack;

  ircTopicEdit.Color := clYellow;
  ircRichEdit.Color  := clSilver;


  SynEdit1.Color := clBlue;
  SynEdit1.Font.Color := clYellow;
  SynEdit1.Gutter.Color := $00FF8000;

  SynEdit2.Color := clBlue;
  SynEdit2.Font.Color := clYellow;
  SynEdit2.Gutter.Color := $00FF8000;

  SynEdit3.Color := clBlue;
  SynEdit3.Font.Color := clYellow;
  SynEdit3.Gutter.Color := $00FF8000;

  SynEdit4.Color := clBlue;
  SynEdit4.Font.Color := clYellow;
  SynEdit4.Gutter.Color := $00FF8000;

  Width := width + 4;
  Width := width - 4;
  Form1.Resize;
end;

procedure TForm1.light1Click(Sender: TObject);
begin
  Form1.Color := clBtnFace;
  CoolBar1.Color := clBtnFace;

  MenuBarButton_File .Font.Color := clBlack;
  MenuBarButton_Edit .Font.Color := clBlack;
  MenuBarButton_Tools.Font.Color := clBlack;
  MenuBarButton_Help .Font.Color := clBlack;
  CtrlMenuBarButton1 .Font.Color := clBlack;

  Panel1 .Color := clBtnFace;
  Panel2 .Color := clBtnFace;
  Panel3 .Color := clBtnFace;
  Panel7 .Color := clBtnFace;
  Panel8 .Color := clBtnFace;
  Panel10.Color := clBtnFace;
  Panel11.Color := clBtnFace;
  Panel12.Color := clBtnFace;

  JvSpeedButton1.Color := clBtnFace;
  JvSpeedButton2.Color := clBtnFace;
  JvSpeedButton4.Color := clBtnFace;
  StartCompile  .Color := clBtnFace;

  StatusBar1.Color := clBtnFace;

  sendChatTextEdit.Color := clWhite;

  PageControl1.Color := clBtnFace;
  PageControl2.Color := clBtnFace;
  PageControl3.Color := clBtnFace;
  PageControl5.Color := clBtnFace;
  PageControl6.Color := clBtnFace;
  PageControl7.Color := clBtnFace;
  PageControl8.Color := clBtnFace;

  LeftPageControl.Color := clBtnFace;
  ScrollBox1.Color := clBtnFace;

//  ListBox1.Color := clWhite;
//  ListBox1.Font.Color := clBlack;

  ListBox2.Color := clWhite;
  ListBox2.Font.Color := clBlack;

  BuildListBox.Color := clWhite;
  BuildListBox.Font.Color := clBlack;

  UserHomeFolder.Color := clWhite;
  UserHomeFolder.Font.Color := clBlack;

//  TreeView1.Color := clWhite;
//  TreeView1.Font.Color := clBlack;

  ircChannelEdit.Color := clWhite;
  ircUserName.Color := clWhite;
  ircUserPass.Color := clWhite;
  ircChannel .Color := clWhite;

  ircLabelNick    .Font.Color := clBlack;
  ircLabelPassword.Font.Color := clBlack;
  ircLabelChannel .Font.Color := clBlack;

  ircListBox.Color := clWhite;
  ircListBox.Font.Color := clBlack;

  ircTopicEdit.Color := clWhite;
  ircRichEdit.Color  := clWhite;

  SynEdit1.Color := clWhite;
  SynEdit1.Font.Color := clBlack;
  SynEdit1.Gutter.Color := clBtnFace;

  SynEdit2.Color := clWhite;
  SynEdit2.Font.Color := clBlack;
  SynEdit2.Gutter.Color := clBtnFace;

  SynEdit3.Color := clWhite;
  SynEdit3.Font.Color := clBlack;
  SynEdit3.Gutter.Color := clBtnFace;

  SynEdit4.Color := clWhite;
  SynEdit4.Font.Color := clBlack;
  SynEdit4.Gutter.Color := clBtnFace;

  Width := width + 4;
  Width := width - 4;
  Form1.Resize;
end;

procedure TForm1.PageControl9Change(Sender: TObject);
begin
  if PageControl9.ActivePage.Caption = 'Editing' then
  begin
    DesignPanelPage.Visible := false;
    PreviewPanel   .Visible := false;
    EditPanel      .Visible := true;
    MainPageControl.ActivePageIndex := 0;
  end;
end;

procedure TForm1.Console1DblClick(Sender: TObject);
begin
  Console1.Active := true;
  Console1.Boot;
  Console1.Writeln('hallo');
  Console1.Prompt := true;
end;

procedure TForm1.SynEdit1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TListView);
end;

procedure TForm1.SynEdit1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  txt : WideString;
  ctxt: String;
begin
  if (Source is TListView) then
  begin
    ctxt := Trim((Source as TListView).Selected.Caption);
    if ctxt = 'TEdit' then
    begin txt :=
      'Edit = TEdit.Create(Form1);' + sLineBreak +
      'Edit.Parent  := Form1;'      + sLineBreak +
      'Edit.Text    := ''Edit1'';'  + sLineBreak +
      'Edit.Visible := true;'       + sLineBreak ;
    end else
    if ctxt = 'TButton' then
    begin txt :=
      'Button = TButton.Create(Form1);' + sLineBreak +
      'Button.Parent  := Form1;'        + sLineBreak +
      'Button.Caption := ''Button1'';'  + sLineBreak +
      'Button.Visible := true;'         + sLineBreak ;
    end else
    if ctxt = 'TComboBox' then
    begin txt :=
      'ComboBox = TComboBox.Create(Form1);' + sLineBreak +
      'ComboBox.Parent  := Form1;'          + sLineBreak +
      'ComboBox.Caption := ''ComboBox1'';'  + sLineBreak +
      'ComboBox.Visible := true;'           + sLineBreak ;
    end else
    if ctxt = 'TImage' then
    begin txt :=
      'Image = TImage.Create(Form1);' + sLineBreak +
      'Image.Parent  := Form1;'       + sLineBreak +
      'Image.Visible := true;'        + sLineBreak ;
    end;

    SynEdit1.InsertBlock(
    SynEdit1.CaretXY,
    SynEdit1.CaretXY, PWideChar(txt), true);
    SynEdit1.SetFocus;
  end;
end;

procedure TForm1.JvInspector1BeforeEdit(Sender: TObject;
  Item: TJvCustomInspectorItem; Edit: TCustomEdit);
begin
  TEdit(Edit).OnClick := ItemClick;
end;

procedure TForm1.ItemClick(Sender: TObject);
var
  I: Integer;
  found: Boolean;
begin
  if JvInspector1.Selected.DisplayName = 'Color' then
  begin
    if ColorDialog1.Execute then
    begin
      JvInspector1.Selected.SetDisplayValue(
      ColorToString(ColorDialog1.Color));
    end;
  end;
end;

function TForm1.PutToC64Screen(X,Y: Integer; AChar: Char): Integer;
begin
  C64ScreenMap[X,Y] := WideChar($E000 + Ord(AChar));
end;

function TForm1.WriteToC64Screen(X,Y: Integer; AString: WideString): Integer;
var
  WStr  : WideString;
  I     : Integer;
  ypos, xpos: Integer;
  finish: Boolean;
begin
  xpos := 1;
  ypos := 0;

  while (true) do
  begin
    if ypos+1 > 25 then
    break;
    inc(ypos);
    while (true) do
    begin
      if xpos+1 > 40 then
      begin
        xpos := 0;
        inc(ypos);
        if ypos >= 25 then
        break;
      end;
      inc(xpos);
      if (Y = ypos) and (X = xpos) then
      begin
        for I := 1 to Length(AString) do
        begin
          C64ScreenMap[ypos, xpos] := WideChar($E000 + Ord(AString[I]));
          if xpos >= 40 then
          begin
            xpos := 0;
            inc(ypos);
          end;
          if ypos >= 25 then
          ypos := 1;
          inc(xpos);
        end;
        break;
      end;
    end;
    xpos := 1;
  end;

  xpos := 0;
  ypos := 0;

//  C64Screen.Lines.Clear;
  WStr := '';

  while (true) do
  begin
    if ypos >= 25 then
    break else
    inc(ypos);
    while (true) do
    begin
      if xpos >= 40 then
      begin
        xpos := 0;
        inc(ypos);
        if ypos >= 25 then
        break;
      end;
      inc(xpos);
      WStr := WStr + C64ScreenMap[ypos, xpos];
    end;
    xpos := 1;
  end;

  while (true) do
  begin
    if xpos >= 40 then
    begin
      xpos := 0;
      inc(ypos);
    end;
    if ypos >= 25 then
    break;
    inc(xpos);
    WStr := WStr + C64ScreenMap[ypos, xpos];
  end;

  C64Screen.Lines.Text := WStr;
end;

procedure TGroupBox_Create(var Value: Variant; Args: TJvInterpreterArgs);
begin
  Value := O2V(TGroupBox.Create(V2O(Args.Values[0]) as TComponent));
end;

procedure TForm1.C64ScreenKeyPress(Sender: TObject; var Key: Char);
begin
 key := #0;
end;

procedure TForm1.C64ScreenTimerTimer(Sender: TObject);
begin
  if C64ScreenCursorBlink = 0 then
  begin
    C64ScreenCursorBlink := 1;
    C64ScreenTimer.Enabled := false;

    WriteToC64Screen(
    C64ScreenCursor.X,
    C64ScreenCursor.Y,WideChar($220));

    C64ScreenTimer.Enabled := true;
  end else
  if C64ScreenCursorBlink = 1 then
  begin
    C64ScreenCursorBlink := 0;
    C64ScreenTimer.Enabled := false;

    WriteToC64Screen(
    C64ScreenCursor.X,
    C64ScreenCursor.Y,' ');

    C64ScreenTimer.Enabled := true;
  end;
end;

procedure TForm1.DesignerIconListViewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DesignerIconListView.BeginDrag(false);
end;

procedure TForm1.JvInspector1BeforeSelection(Sender: TObject;
  NewItem: TJvCustomInspectorItem; var Allow: Boolean);
begin
  Allow := true;
end;

procedure TForm1.JvInspector1ItemDoubleClicked(Sender: TObject;
  Item: TJvCustomInspectorItem);
begin
  showMessage(item.DisplayName);
end;

procedure TForm1.JvInspector1ItemValueChanged(
  Sender: TObject;
  Item  : TJvCustomInspectorItem);
var
  sValue: String;
begin
  if (Item.Data <> nil) then
  begin
    sValue := Item.DisplayValue;

    if (CompareText(Item.Data.Name, 'Color') = 0) then
    begin
      Item.SetDisplayValue(ColorToString(ColorDialog1.Color));
    end;
  end;
end;

procedure TForm1.ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  DesignerIconListView.BeginDrag(false);
end;

procedure TForm1.PaintBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  GradientFormCaption: TJvGradientCaption;
  CheckListBox: TCheckListBox;
begin
  if not (Source is TMyTableListBox) then
  exit;

  Form := TForm.CreateParented(SqlScrollBox.Handle);
  Form.Parent      := SqlScrollBox;
  Form.BorderStyle := bsSizeToolWin;
  Form.Left        := X;
  Form.Top         := Y;
  Form.Caption     :=
       TableListBox.Items.Strings[
       TableListBox.ItemIndex];
  Form.Width       := 200;

  GradientFormCaption := TJvGradientCaption.Create(Form);
  GradientFormCaption.StartColor     := clRed;
  GradientFormCaption.EndColor       := clYellow;
  GradientFormCaption.Font.Color     := clBlack;
  GradientFormCaption.FormCaption    := Form.Caption;
  GradientFormCaption.GradientSteps  := 100;
  GradientFormCaption.GradientActive := true;
  GradientFormCaption.Active         := true;

  CheckListBox := TCheckListBox.Create(Form);
  CheckListBox.Parent := Form;
  CheckListBox.Align  := alClient;
  CheckListBox.Show;

  DataBase1.Directory := 'E:\Program Files (x86)\Common Files\Borland Shared\Data';
  DataBase1.GetFieldNames(Form.Caption,CheckListBox.Items);
  Form.Show;
end;

procedure TForm1.PaintBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TMyTableListBox);
end;

procedure TForm1.TableListBox_MouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState;
  X,  Y : Integer);
begin
  TableListBox.BeginDrag(false);
end;

procedure TForm1.DatabaseComboBoxChange(Sender: TObject);
begin
  TableListBox.Items.Clear;
  DataBase1.Close;

  Session1.Close;
  Session1.Open;

  with DataBase1 do
  begin
    DataBaseName := DataBaseComboBox.Text;
    AliasName := DataBaseComboBox.Text;
    Open;
    if Connected then
    GetTableNames(TableListBox.Items,false) else
  end;
end;

end.
