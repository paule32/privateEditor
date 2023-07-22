// -------------------------------------------------------------------
// File:    EditorForm.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
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
  JvButton, JvCtrls, JvComponentBase, Console, Grids, ValEdit, IniFiles,
  JvCombobox, JvDesignSurface, JvDesignUtils, JvInspector, JvInterpreter,
  JvExExtCtrls, JvExtComponent, JvPanel, TntExtCtrls, TntStdCtrls, ChatFrame,
  TntComCtrls, DB, DBTables, JvAppHotKey, JvEdit, JvListBox, JvDriveCtrls,
  IdHTTP, IdFTP, JvTipOfDay, JvCreateProcess, JvDataEmbedded, JvArrowButton,
  ErrorBoxForm, InfoBoxForm, AboutBox, InputBox, DesignerFrame, EditorFrame,
  TeamServerFrame, EditFrame, C64KeyBoard, C64ConfigFrame, MembersFrame,
  C64DrivesFrame, NewProjectFrame, FoldersLocal, FoldersRemote, SpreadFrame,
  HelpTopicFrame, HelpAuthorFrame, FontStyleFrame, FontFaceFrame,
  FontColorFrame, ComputerFrame, FormatLayoutFrame, OptionsFrame,
  JvDesignImp, JclSysInfo, EnvironmentFrame, LeftPanelFrame,
  JvColorCombo, JvInterpreterFm;

type
  TMyTableListBox = class(TListBox)
  end;
  TWideStringArray = array of WideString;

var
  C64KeyMapValue : Array[0..9] of String = (
  'code1','code2','code3','code4','code5','code6','code7','code8','code9','code10'
  );

type
  TForm1 = class(TForm)
    CoolBar1: TCoolBar;
    Panel1: TPanel;
    Panel2: TPanel;
    StartCompile: TJvSpeedButton;
    ModeButton: TJvSpeedButton;
    StatusBar1: TStatusBar;
    statusProgress: TProgressBar;
    LogPanel: TPanel;
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
    Splitter5: TSplitter;
    IdAntiFreeze1: TIdAntiFreeze;
    IdIRC1: TIdIRC;
    MainPageControl: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet_Options: TTabSheet;
    TabSheet13: TTabSheet;
    ChatTabSheet: TTabSheet;
    PageControl1: TJvPageControl;
    TabSheet7: TTabSheet;
    Panel12: TPanel;
    buildListBox: TCheckListBox;
    Button6: TJvImgBtn;
    Button7: TJvImgBtn;
    Button8: TJvImgBtn;
    heme1: TMenuItem;
    light1: TMenuItem;
    dark1: TMenuItem;
    TabSheet22: TTabSheet;
    ConsoleTabSheet: TTabSheet;
    ScrollBox5: TScrollBox;
    Console1: TConsole;
    ImageList2: TImageList;
    ColorDialog1: TColorDialog;
    JvInterpreterProgram1: TJvInterpreterProgram;
    C64TabSheet: TTabSheet;
    ScrollBox6: TScrollBox;
    C64ScreenTimer: TTimer;
    N13: TMenuItem;
    C64BASIC1: TMenuItem;
    TabSheet28: TTabSheet;
    Database1: TDatabase;
    Session1: TSession;
    PageControl12: TPageControl;
    TabSheet30: TTabSheet;
    SqlScrollBox: TScrollBox;
    PaintBox1: TPaintBox;
    PageControl14: TPageControl;
    TabSheet32: TTabSheet;
    ScrollBox3: TScrollBox;
    C64BASIC2: TMenuItem;
    MSDOS1: TMenuItem;
    MSDOS2: TMenuItem;
    Windows3111: TMenuItem;
    WindowsNT32Bit1: TMenuItem;
    MSDOS3: TMenuItem;
    WindowsNT32Bit2: TMenuItem;
    ModeImages: TImageList;
    MenuBarButton_Window: TCtrlMenuBarButton;
    PopupMenu_Window: TJvPopupMenu;
    MenuItem3: TMenuItem;
    ChatWindow1: TMenuItem;
    PreviewWindow1: TMenuItem;
    InstallScript1: TMenuItem;
    NewModule_TabSheet: TTabSheet;
    NewProjectPageControl: TPageControl;
    TabSheet36: TTabSheet;
    TabSheet37: TTabSheet;
    TabSheet38: TTabSheet;
    TabSheet39: TTabSheet;
    TabSheet40: TTabSheet;
    TabSheet41: TTabSheet;
    TabSheet42: TTabSheet;
    ListView3: TListView;
    ListView4: TListView;
    ListView5: TListView;
    ListView6: TListView;
    ListView7: TListView;
    ListView8: TListView;
    MenuBarButton_DataBase: TCtrlMenuBarButton;
    PopupMenu_DataBase: TJvPopupMenu;
    SQLExplorer1: TMenuItem;
    SQLMonitor1: TMenuItem;
    FormWizard1: TMenuItem;
    N14: TMenuItem;
    ImageEditor1: TMenuItem;
    Panel21: TPanel;
    Splitter18: TSplitter;
    ProjectNameEdit: TJvEdit;
    CreateNewButton: TJvImgBtn;
    Editor_PopupMenu: TJvPopupMenu;
    MenuItem5: TMenuItem;
    Translate_MenuItem: TMenuItem;
    Run_MenuItem: TMenuItem;
    Compile_FPC_MenuItem: TMenuItem;
    Translate_TO_gnuCPP: TMenuItem;
    Internal_FPC_Interpreter_MenuItem: TMenuItem;
    N15: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Delete1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    Help1: TMenuItem;
    BookMark_Image: TImageList;
    CtrlMenuBarButton3: TCtrlMenuBarButton;
    JvPopupMenu1: TJvPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem6: TMenuItem;
    TabSheet55: TTabSheet;
    IdFTP1: TIdFTP;
    IdHTTP1: TIdHTTP;
    IdTCPClient1: TIdTCPClient;
    Splitter3: TSplitter;
    Frame_Panel: TPanel;
    NewProjectScrollBox: TScrollBox;
    Panel14: TPanel;
    JvImgBtn21: TJvImgBtn;
    JvImgBtn22: TJvImgBtn;
    JvImgBtn23: TJvImgBtn;
    JvImgBtn24: TJvImgBtn;
    JvImgBtn25: TJvImgBtn;
    Splitter10: TSplitter;
    JvDataEmbedded1: TJvDataEmbedded;
    JvDataEmbedded2: TJvDataEmbedded;
    JvCreateProcess1: TJvCreateProcess;
    InternalCompiler1: TMenuItem;
    JvDataEmbedded3: TJvDataEmbedded;
    JvDataEmbedded4: TJvDataEmbedded;
    JvDataEmbedded5: TJvDataEmbedded;
    ImageList1: TImageList;
//    ItalicFontSize22: TPanel;
    Panel8: TPanel;
    Windows32Bit1: TMenuItem;
    Windows64Bit1: TMenuItem;
    N18: TMenuItem;
    MSDOS32Bit1: TMenuItem;
    JvInterpreterFm1: TJvInterpreterFm;
    Panel22: TPanel;
    Splitter19: TSplitter;
    ScrollBox4: TScrollBox;
    Timer1: TTimer;
    PanelResizer: TPanel;
    SpreadTabSheet: TTabSheet;
    C64Screen: TSynEdit;
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
    procedure Console1DblClick(Sender: TObject);
    procedure SynEdit1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SynEdit1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure C64ScreenTimerTimer(Sender: TObject);
    procedure DesignerIconListView_StandardMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure JvInspector1BeforeSelection(Sender: TObject;
      NewItem: TJvCustomInspectorItem; var Allow: Boolean);
    procedure PaintBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure PaintBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure MSDOS3Click(Sender: TObject);
    procedure WindowsNT32Bit2Click(Sender: TObject);
    procedure MSDOS2Click(Sender: TObject);
    procedure Windows3111Click(Sender: TObject);
    procedure WindowsNT32Bit1Click(Sender: TObject);
    procedure C64BASIC1Click(Sender: TObject);
    procedure C64BASIC2Click(Sender: TObject);
    procedure MSDOS1Click(Sender: TObject);
    procedure ChatWindow2Click(Sender: TObject);
    procedure PopupMenu_File_New_OtherClick(Sender: TObject);
    procedure SQLExplorer1Click(Sender: TObject);
    procedure SQLMonitor1Click(Sender: TObject);
    procedure ImageEditor1Click(Sender: TObject);
    procedure DesignerIconListView_BoxMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DesignerIconListView_ListMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DesignerIconListView_ButtonMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DesignerIconListView_GridMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DesignerIconListView_DataBaseMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DesignerIconListView_ImageMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DesignerIconListView_ScrollMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DesignerIconListView_CSMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DesignerIconListView_EditMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure JvApplicationHotKey1HotKey(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure Compile_FPC_MenuItemClick(Sender: TObject);
    procedure Internal_FPC_Interpreter_MenuItemClick(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure Translate_TO_gnuCPPClick(Sender: TObject);
    procedure Run_MenuItemClick(Sender: TObject);
    procedure LeftPageControlChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure NewProjectPageControlChange(Sender: TObject);
    procedure InternalCompiler1Click(Sender: TObject);
    procedure Windows32Bit1Click(Sender: TObject);
    procedure Windows64Bit1Click(Sender: TObject);
    procedure MSDOS32Bit1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Console1CommandExecute(Sender: TCustomConsole;
      ACommand: String; var ACommandFinished: Boolean);
    procedure CreateNewButtonClick(Sender: TObject);
    procedure ProjectNameEditEnter(Sender: TObject);
    procedure ProjectNameEditExit(Sender: TObject);
    procedure ProjectNameEditDblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure C64ScreenKeyPress(Sender: TObject; var Key: WideChar);
    procedure EnvironmentOptions1Click(Sender: TObject);
  private
    Cv1: TCanvas;
    ircListLimit: Integer;

    has_errors: Boolean;

    IniFile_SQL_Explorer: String;
    IniFile_SQL_Monitor : String;

    IniFile_IDE_Language: String;

    IniFile_AsmOutput : String;
    IniFile_AsmInclude: String;
    IniFile_AsmYasm   : String;

    IniFile_Image_Edit  : String;
  public

    C64ScreenMap: Array [1..25, 1..40] of WideChar;
    C64ScreenMaxCols: Word;
    C64ScreenMaxRows: Word;

    C64ScreenText: WideString;

    C64ScreenCursor: TPoint;
    C64ScreenCursorBlink: Integer;

    C64KeyImage: TImage;

    dropList  : TStrings;

    TableListBox: TMyTableListBox;
    Form: TForm;

    DFrame           : TFrame1;
    DFrameEdit       : TFrame3;
    DFrameNewProject : TFrame8;

    DFrameHelpAuthor    : TFrame11;
    DFrameFontStyle     : TFrame12;
    DFrameFontColor     : TFrame13;
    DFrameFontFace      : TFrame14;

    DFrameComputerOS    : TFrame16;
    DFrameFormatLayout  : TFrame17;

    DFrameSpread        : TFrame18;
    DFrameEditor        : TFrame19;
    DFrameChat          : TFrame20;
    DFrameEditOptions   : TFrame21;
    DFrameEnvOptions    : TFrame22;
    DFrameLeftPanel     : TFrame23;

    DFrameHelpTopic     : TFrame15;

    DFrameFoldersLocal  : TFrame9;
    DFrameFoldersRemote : TFrame10;

    DFrameTeamServer : TFrame2;
    DFrameMembers    : TFrame6;

    DFrameC64KeyBoard: TFrame4;
    DFrameC64Config  : TFrame5;
    DFrameC64Drives  : TFrame7;

    topicCount: Integer;

    msdosapp  : Boolean;
    dbaseapp  : Boolean;

    tipday: TJvTipOfDay;

    procedure TableListBox_MouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift : TShiftState;
      X,  Y : Integer);

    procedure LoadIniFile;
    procedure SaveIniFile;

    procedure uncheck_run_menues;
    procedure SetEditMisc;

    procedure ModifyControl(const AControl: TControl; LS: TStrings);
    procedure ExpandTopLevel;

    procedure CreateSimpleProgram(aType: myAppType);

    procedure CreateSimpleDos32PascalProgram   ;
    procedure CreateSimpleDos32PascalUnit      ;
    procedure CreateSimpleDos32PascalLibrary   ;

    procedure CreateSimpleDos32BasicProgram    ;
    procedure CreateSimpleDos32dBaseProgram    ;
    procedure CreateSimpleDos32cLispProgram    ;
    procedure CreateSimpleDos32AssemblerProgram;

    procedure CreateSimpleWin32PascalProgram   ;
    procedure CreateSimpleWin32PascalUnit      ;
    procedure CreateSimpleWin32PascalLibrary   ;

    procedure CreateSimpleWin32BasicProgram    ;
    procedure CreateSimpleWin32dBaseProgram    ;
    procedure CreateSimpleWin32cLispProgram    ;
    procedure CreateSimpleWin32AssemblerProgram;

    procedure JvDesignPanelPaint(Sender: TObject);
    procedure CheckButtonOnClick(Sender: TObject);
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
  InterpreterClasses, SplashScreen;

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
  with DFrameFoldersLocal.UserHomeFolder.Items do
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
  DFrameEditor.TabSheet1.Caption := 'Unamed';
  DFrameEditor.SynEdit1.Lines.Clear;
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
  I,J       : Integer;
  InspCat   : TJvInspectorCustomCategoryItem;
  TableList : TStringList;
  text      : WideString;
  xpos, ypos: Integer;
  row, col  : Integer;
  cImage    : TImage;
  S         : String;
  Index     : Integer;
  letter1, letter2: Char;
  rect: TRect;
begin
  SplashForm.ProgressBar1.Position := 10;

  Form1.DoubleBuffered := True;
  has_errors := false;

  ErrorBox := TErrorBox.Create(Form1);
  InfoBox  := TInfoBox.Create(Form1);

  // todo: !
  dropList := TStringList.Create;
  for I := 0 to 60 do
  dropList.Add('code' + IntToStr(I));

  ChatTabSheet.TabVisible := false;

  // default IDE values
  IniFile_SQL_Explorer := 'E:\Program Files (x86)\Borland\Delphi7\Bin\dbexplor.exe';
  IniFile_SQL_Monitor  := 'E:\Program Files (x86)\Borland\Delphi7\Bin\sqlmon.exe';
  IniFile_Image_Edit   := 'E:\Program Files (x86)\Borland\Delphi7\Bin\imagedit.exe';

  IniFile_AsmOutput  := ExtractFilePath(Application.ExeName) + 'dev\tmp';
  IniFile_AsmInclude := ExtractFilePath(Application.ExeName) + 'dev\asm';
  IniFile_AsmYasm    := ExtractFilePath(Application.ExeName) + 'dev\bin';

  // left panel (config, setup):
  DFrameLeftPanel := TFrame23.Create(LeftPanel);
  DFrameLeftPanel.Parent := LeftPanel;
  DFrameLeftPanel.Align  := alClient;
  DFrameLeftPanel.Visible := true;

  // default editor synedit:
  DFrameEditor := TFrame19.Create(TabSheet2);
  DFrameEditor.Parent  := TabSheet2;
  DFrameEditor.Align   := alClient;
  DFrameEditor.Visible := false;

  // config: c64 keyboard
  DFrameC64Config := TFrame5.Create(DFrameLeftPanel.C64ConfigTabSheet);
  DFrameC64Config.Parent  := DFrameLeftPanel.C64ConfigTabSheet;
  DFrameC64Config.Align   := alClient;

  DFrameC64Config.ListBox2.Items.BeginUpdate;
    for I := 0 to  95 do DFrameC64Config.ListBox2.Items.Add(IntToStr($E020 + I));
    for I := 0 to 100 do DFrameC64Config.ListBox2.Items.Add(IntToStr($E0A0 + I));
//    for I := $E0A0 to $E0E0 do DFrameC64Config.ListBox2.Items.Add(IntToStr(I));
  DFrameC64Config.ListBox2.Items.EndUpdate;

  DFrameC64Config.Visible := false;

  // c64 drives
  DFrameC64Drives         := TFrame7.Create(Panel8);
  DFrameC64Drives.Parent  := Panel8;
  DFrameC64Drives.Align   := alClient;
  DFrameC64Drives.Visible := false;

  SplashForm.ProgressBar1.Position := 20;


//  DFrameC64Config.ValueListEditor1.InsertRow('kkk','0000',true);
//  DFrameC64Config.ValueListEditor1.ItemProps['kkk'].EditStyle := esSimple;

  DFrameMembers := TFrame6.Create(Panel8);
  DFrameMembers.Parent  := Panel8;
  DFrameMembers.Align   := alClient;
  DFrameMembers.Visible := false;

  DFrameNewProject := TFrame8.Create(NewProjectScrollBox);
  DFrameNewProject.Parent  := NewProjectScrollBox;
  DFrameNewProject.Align   := alClient;
  DFrameNewProject.Visible := true;

  DFrameFoldersLocal := TFrame9.Create(DFrameLeftPanel.LocalFoldersScrollBox);
  DFrameFoldersLocal.Parent  := DFrameLeftPanel.LocalFoldersScrollBox;
  DFrameFoldersLocal.Align   := alClient;
  DFrameFoldersLocal.Visible := true;

  DFrameFoldersRemote := TFrame10.Create(DFrameLeftPanel.RemoteFoldersScrollBox);
  DFrameFoldersRemote.Parent  := DFrameLeftPanel.RemoteFoldersScrollBox;
  DFrameFoldersRemote.Align   := alClient;
  DFrameFoldersRemote.Visible := true;

  // help authoring:
  DFrameHelpAuthor := TFrame11.Create(Form1);
  DFrameHelpAuthor.Parent  := Form1;
  DFrameHelpAuthor.Top     := 100;
  DFrameHelpAuthor.Left    := 264;
  DFrameHelpAuthor.Align   := alClient;
  DFrameHelpAuthor.Visible := false;
  //
  DFrameFontStyle := TFrame12.Create(Panel2);
  DFrameFontStyle.Parent  := Panel2;
  DFrameFontStyle.Align   := alClient;
  DFrameFontStyle.Visible := false;

  DFrameFontColor := TFrame13.Create(Panel2);
  DFrameFontColor.Parent  := Panel2;
  DFrameFontColor.Align   := alClient;
  DFrameFontColor.Visible := false;

  DFrameFontFace := TFrame14.Create(Panel2);
  DFrameFontFace.Parent  := Panel2;
  DFrameFontFace.Align   := alClient;
  DFrameFontFace.Visible := false;

  DFrameComputerOS := TFrame16.Create(Panel8);
  DFrameComputerOS.Parent  := Panel8;
  DFrameComputerOS.Align   := alClient;
  DFrameComputerOS.Visible := false;

  DFrameFormatLayout := TFrame17.Create(ScrollBox4);
  DFrameFormatLayout.Parent  := ScrollBox4;
  DFrameFormatLayout.Align   := alClient;
  DFrameFormatLayout.Visible := false;

  DFrameHelpTopic := TFrame15.Create(LeftPanel);
  DFrameHelpTopic.Parent  := LeftPanel;
  DFrameHelpTopic.Align   := alClient;
  DFrameHelpTopic.CreateNewTab('Index Page');
  DFrameHelpTopic.Visible := false;

  SplashForm.ProgressBar1.Position := 30;

  DFrameEnvOptions := TFrame22.Create(TabSheet_Options);
  DFrameEnvOptions.Parent  := TabSheet_Options;
  DFrameEnvOptions.Align   := alClient;
  DFrameEnvOptions.Visible := false;

  // interpreter
  initInterpreter;

  IniFile_IDE_Language := 'ENG';
  LoadIniFile;

  ypos := 1;
  xpos := 1;

  C64ScreenMaxCols     := 40;
  C64ScreenMaxRows     := 25;

  C64ScreenCursor.X    := xpos;
  C64ScreenCursor.Y    := ypos;

  C64ScreenCursorBlink := 0;

  // fill C64ScreenMap[dx,dy] with #32
  text := '';
  for row := 1 to 25 do
  begin
    for col := 1 to 40 do
    begin
      C64ScreenMap[row,col] := WideChar($E000 + Ord(' '));
      text := text + C64ScreenMap[row,col];
    end;
  end;
  C64Screen.Lines.Text := text;


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

  DFrameEditor.SynEdit1.Lines.Clear;

  DFrameLeftPanel.LeftPageControl.Pages[2].TabVisible := true;

  // canvas for TextWidth:
  Cv1 := TCanvas.Create;
  Cv1.Handle := GetDC(Handle);
  Cv1.Font := TFont.Create;
  Cv1.Font.Name  := 'Consolas';
  Cv1.Font.Size  := 10;
  Cv1.Font.Color := clRed;

  MainPageControl.Pages[1].TabVisible := false;
  MainPageControl.Pages[8].TabVisible := false;

  with GlobalJvInterpreterAdapter do
  begin
    AddFunction('dummy', 'WriteLn', PascalAdapter_WriteLn, 1, [varString], varString);
  end;

  SplashForm.ProgressBar1.Position := 40;

  DFrameLeftPanel.EventMethodeListBox.InsertRow('Caption','Text1',true);
  DFrameLeftPanel.EventMethodeListBox.InsertRow('Height' ,'0'    ,true);
  DFrameLeftPanel.EventMethodeListBox.InsertRow('Left'   ,'0'    ,true);
  DFrameLeftPanel.EventMethodeListBox.InsertRow('Top'    ,'0'    ,true);
  DFrameLeftPanel.EventMethodeListBox.InsertRow('Width'  ,'0'    ,true);

  DFrameLeftPanel.EventMethodeListBox.InsertRow('Name'   ,'ObjectName',true);

  // get alias/tables
  DFrameMembers.DataBaseComboBox.Items.Clear;

  Session1.Open;
  Session1.GetAliasNames(DFrameMembers.DataBaseComboBox.Items);

  TableListBox := TMyTableListBox.Create(DFrameMembers.TabSheet1);
  TableListBox.Parent := DFrameMembers.TabSheet1;
  TableListBox.Align  := alClient;
  TableListBox.Items.Clear;
  TableListBox.OnMouseDown := TableListBox_MouseDown;

  // c64 keyboard
  DFrameC64KeyBoard := TFrame4.Create(Frame_Panel);
  DFrameC64KeyBoard.Parent  := Frame_Panel;
  DFrameC64KeyBoard.Top     := 4;
  DFrameC64KeyBoard.Left    := 4;
  DFrameC64KeyBoard.Visible := false;

  C64KeyImage := TImage.Create(DFrameC64KeyBoard);
  with C64KeyImage do
  begin
    Parent := DFrameC64KeyBoard;
    Width  := 55;
    Height := 55;
  end;

  // backend
  DFrameEdit := TFrame3.Create(Frame_panel);
  DFrameEdit.Parent := Frame_Panel;
  DFrameEdit.Align := alClient;
  DFrameEdit.Visible := false;

  // intro
  DFrameTeamServer := TFrame2.Create(Frame_Panel);
  DFrameTeamServer.Parent  := Frame_Panel;
  DFrameTeamServer.Align   := alClient;
  DFrameTeamServer.Visible := true;

  SplashForm.ProgressBar1.Position := 75;

  // chat frame
  DFrameChat := TFrame20.Create(ChatTabSheet);
  DFrameChat.Parent  := ChatTabSheet;
  DFrameChat.Align   := alClient;
  DFrameChat.Visible := false;

  // options frame
  DFrameEditOptions := TFrame21.Create(TabSheet_Options);
  DFrameEditOptions.Parent  := TabSheet_Options;
  DFrameEditOptions.Align   := alClient;
  DFrameEditOptions.Visible := false;

  // spread sheet
  DFrameSpread := TFrame18.Create(SpreadTabSheet);
  DFrameSpread.Parent  := SpreadTabSheet;
  DFrameSpread.Align   := alClient;

  DFrameSpread.AdvStringGrid1.BeginUpdate;
  DFrameSpread.AdvStringGrid1.ColumnHeaders.Add(''); // left-top corner
  DFrameSpread.AdvStringGrid1.RowHeaders   .Add(''); // left-top corner
  for I := 1 to 26 do
  begin
    letter1 := Chr(Ord('A') + i - 1);
    DFrameSpread.AdvStringGrid1.ColumnHeaders.Add(letter1);
  end;
  for I := 1 to 26 do
  begin
    letter1 := Chr(Ord('A') + (I - 1) div 26);
    letter2 := Chr(Ord('A') + (I - 1) mod 26);
    DFrameSpread.AdvStringGrid1.ColumnHeaders.Add(letter1 + letter2);
  end;

  SplashForm.ProgressBar1.Position := 80;

  for I := 1 to 2048 do
  DFrameSpread.AdvStringGrid1.RowHeaders.Add(IntToStr(I));
  DFrameSpread.AdvStringGrid1.EndUpdate;
  DFrameSpread.Visible := true;

  PanelResizer.Visible := true;
  tipday := nil;

  SplashForm.ProgressBar1.Position := 90;
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

  DFrameFoldersLocal.UserHomeFolder.Items.GetFirstNode.Text := CurrentUserName;
  ExpandTopLevel;

  DFrameComputerOS.Visible := true;

  DFrameEditor.TabSheet1.Caption := 'Unamed';
  DFrameLeftPanel.TabSheet3 .Caption := 'Project';

  WriteToC64Screen(5,2,'**** COMMODORE 64 BASIC V2 ****');
  WriteToC64Screen(2,4,'64K RAM SYSTEM  38911 BASIC BYTES FREE');
  WriteToC64Screen(1,6,'READY.');

  C64ScreenCursor.X := 1;
  C64ScreenCursor.Y := 7;

  NewProjectPageControl.ActivePageIndex := 1;
  NewProjectPageControl.ActivePageIndex := 0;

  DFrameLeftPanel.LeftPageControl.ActivePageIndex := 2;
  MainPageControl.ActivePageIndex := 8;

  SplashForm.ProgressBar1.Position := 100;
  SplashForm.Hide;

  DFrameFormatLayout.Visible := true;
  ProjectNameEdit.SetFocus;
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
    ErrorBox.BringToFront;
    ErrorBox.Show;
    exit;
  end;

  if (Length(SaveDialog1.FileName) < 1)
  or (Length(SaveDialog1.FileName) > 255) then
  begin
    ErrorBox.Text('file name to short, or to long.');
    ErrorBox.BringToFront;
    ErrorBox.Show;
    exit;
  end;

  // Pascal
  if ModeButton.Tag = 1 then
  begin
    if not(ExtractFileExt(SaveDialog1.FileName) = 'pas') then
    begin
      ErrorBox.Text('only .pas files allowed.');
      ErrorBox.BringToFront;
      ErrorBox.Show;
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
  Timer1.Enabled := false;
  C64ScreenTimer.Enabled := false;
  
  SaveIniFile;
  C64KeyImage.Free;

  DFrame.Free;
  DFrameTeamServer.Free;
  DFrameEdit.Free;
  DFrameMembers.Free;

  DFrameC64KeyBoard.Free;
  DFrameC64Config.Free;
  DFrameC64Drives.Free;

  SplashForm.ProgressBar1.Position := 30;

  DFrameFoldersLocal.Free;
  DFrameFoldersRemote.Free;

  dropList.Clear;
  dropList.Free;

  Cv1.Free;
  Cv1 := nil;

  Database1.Close;
  Database1.Free;

  Session1.Close;
  Session1.Free;

  SplashForm.ProgressBar1.Position := 50;

  ErrorBox.Free;
  InfoBox.Free;

  SplashForm.ProgressBar1.Position := 70;
  SplashForm.Free;
end;

procedure TForm1.PopupMenu_Help_AboutClick(Sender: TObject);
begin
  OKRightDlg := TOKRightDlg.Create(Form1);
  OKRightDlg.ShowModal;
  OKRightDlg.Free;
end;

procedure TForm1.JvSpeedButton3Click1(Sender: TObject);
begin
  if DFrameEditor.SynEdit1.Modified then
  JvSpeedButton2Click(Sender);

  if not(OpenDialog1.Execute) then
  begin
    ErrorBox.Text('something goes wrong at open file.');
    ErrorBox.BringToFront;
    ErrorBox.Show;
    has_errors := true;
    exit
  end;
  DFrameEditor.SynEdit1.Lines.Clear;
  DFrameEditor.SynEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
  DFrameEditor.SynEdit1.Lines.Delete(
  DFrameEditor.SynEdit1.Lines.Count - 1);

  DFrameEditor.TabSheet1.Caption := ExtractFileName(OpenDialog1.FileName);

  MainPageControl.ActivePage := TabSheet2;
  DFrameEditor.SynEdit1.SetFocus;
end;

procedure TForm1.JvSpeedButton2Click2(Sender: TObject);
begin
  if not(OpenDialog1.Execute) then
  begin
    ErrorBox.Text('something went wrong at open file:' + #13 + OpenDialog1.FileName);
    ErrorBox.BringToFront;
    ErrorBox.Show;
    has_errors := true;
    exit;
  end;

  if DFrameEditor.TabSheet1.Caption = 'Unamed' then
     DFrameEditor.TabSheet1.Caption := OpenDialog1.FileName;

  DFrameEditor.SynEdit1.Lines.SaveToFile(OpenDialog1.FileName);
  DFrameEditor.SynEdit1.Modified := false;
end;

procedure TForm1.JvSpeedButton1Click(Sender: TObject);
var
  S1,S2: String;
  SL: TStringList;
begin
  if Length(Trim(DFrameEditor.SynEdit1.Lines.Text)) < 1 then
  DFrameEditor.SynEdit1.Modified := false;

  if DFrameEditor.SynEdit1.Modified then
  begin
    if DFrameEditor.TabSheet1.Caption = 'Unamed' then
    begin
      if not(SaveDialog1.Execute) then
      begin
        ErrorBox.Text('something went wrong on save file.');
        ErrorBox.BringToFront;
        ErrorBox.Show;
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

      DFrameEditor.TabSheet1.Caption := S2;

      sl := TStringList.Create;
      sl.Add(DFrameEditor.SynEdit1.Lines.Text);
      sl.SaveToFile(S1);
      sl.Free;

      DFrameEditor.SynEdit1.Modified := false;
      exit;
    end;

    if not(SaveDialog1.Execute) then
    begin
      ErrorBox.Text('something went wrong on save file.');
      ErrorBox.BringToFront;
      ErrorBox.Show;
      exit;
    end;

    S1 := SaveDialog1.FileName;
    S2 := ExtractFileName(s1);

    DFrameEditor.TabSheet1.Caption := S2;

    sl := TStringList.Create;
    sl.Add(DFrameEditor.SynEdit1.Lines.Text);
    sl.SaveToFile(S1);
    sl.Free;

    DFrameEditor.SynEdit1.Modified := false;
    exit;
  end;

  if not(OpenDialog1.Execute) then
  begin
    ErrorBox.Text('something went wrong on open file.');
    ErrorBox.BringToFront;
    ErrorBox.Show;
    exit;
  end;

  S1 := OpenDialog1.FileName;
  S2 := ExtractFileName(s1);

  DFrameEditor.TabSheet1.Caption := S2;

  DFrameEditor.SynEdit1.Lines.Clear;
  DFrameEditor.SynEdit1.Lines.LoadFromFile(S1);
  DFrameEditor.SynEdit1.Lines.Delete(
  DFrameEditor.SynEdit1.Lines.Count - 1);

  DFrameEditor.SynEdit1.Modified := false;

  MainPageControl.ActivePageIndex := 0;
  DFrameEditor.SynEdit1.SetFocus;

end;

procedure TForm1.JvSpeedButton2Click(Sender: TObject);
var
  sl: TStrings;
begin
  if not(DFrameEditor.SynEdit1.Modified) then exit;
  if DFrameEditor.TabSheet1.Caption = 'Unamed' then
  begin
    if not(SaveDialog1.Execute) then
    begin
      ErrorBox.Text('something went wrong at open file:' + #13 + SaveDialog1.FileName);
      ErrorBox.BringToFront;
      ErrorBox.Show;

      has_errors := true;
      exit;
    end;
  end;

  if DFrameEditor.TabSheet1.Caption = 'Unamed' then
     DFrameEditor.TabSheet1.Caption := SaveDialog1.FileName;

  sl := TStringList.Create;
  sl.Add(DFrameEditor.SynEdit1.Lines.Text);
  sl.SaveToFile(SaveDialog1.FileName);
  sl.Free;

  DFrameEditor.SynEdit1.Modified := false;
  has_errors := false;
end;

procedure TForm1.StartCompileClick(Sender: TObject);
var
  callParser:          function(fileSrc, tempDir: PChar): BOOL; cdecl;
  callParserGetLine  : function: Integer; cdecl;
  callParserGetLines : function: Integer; cdecl;
  callParserCloseFile: procedure; cdecl;
  callParserError    : procedure(msg: PChar); cdecl;

  Handle : THandle;
  yylines: Integer;
  res: String;

  procedure ParserError(msg: PChar);
  begin
    raise Exception.Create(PChar(msg));
  end;
begin
  JvSpeedButton2Click(Sender);
  buildListBox.Items.Clear;

  if has_errors then
  begin
    has_errors := true;
    exit;
  end;

  MainPageControl.ActivePage := ConsoleTabSheet;
  Console1DblClick(Sender);
  Console1.SetFocus;

// TODO: parser (below):
(*
if msdosapp then
begin
  JvInterpreterProgram1.Pas.Text := String(DFrameEditor.SynEdit1.Text);
  JvInterpreterProgram1.Compile;
  JvInterpreterProgram1.Run;
end else
begin
  JvInterpreterFm1.Pas.Text := String(DFrameEditor.SynEdit1.Text);
  JvInterpreterFm1.Compile;
  JvInterpreterFm1.Run;
end;
exit;*)

// TODO: parser:
  DateTimeToString(res,'',now);
  buildListBox.Items.Insert(0,res + ': ' + 'initialize...');

  try
    try
      Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\dBaseDSL.dll'));
      if Handle <> 0 then
      begin
        DateTimeToString(res,'',now);
        buildListBox.Items.Insert(0,res + ': load dBaseDSL.dll: OK.');

        callParser          := GetProcAddress(Handle,'_yy_dbase_lex_main');
        callParserCloseFile := GetProcAddress(Handle,'_yy_dbase_lex_close');
        callParserGetLine   := GetProcAddress(Handle,'_yy_dbase_lex_get_line');
        callParserGetLines  := GetProcAddress(Handle,'_yy_dbase_lex_getlines');
        callParserError     := GetProcAddress(Handle,'_yy_dbase_lex_parser_error');

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
            if DFrameEditor.TabSheet1.Caption = 'Unamed' then
            begin
              DFrameEditor.SynEdit1.Modified := true;
              JvSpeedButton2Click(Sender);
            end;
            callParser(
              PChar(DFrameEditor.TabSheet1.Caption),
              PChar(IniFile_AsmOutput)
            );
            InfoBox.Text('Compile OK' + #13#10 +
            'Lines: ' + IntToStr(callParserGetLines-1));
          except
            on E: Exception do
            begin
              callParserCloseFile;
              ErrorBox.Text('Exception:' + #13 + E.Message);
              ErrorBox.BringToFront;
              ErrorBox.Show;
            end;
          end;
        end;
      end else
      begin
        DateTimeToString(res,'',now);
        buildListBox.Items.Insert(0,res + ': load parsers.dll: FAIL.');
      end;
    except
      on E: Exception do
      begin
        ErrorBox.Text('Error:' + #13 + E.Message);
        ErrorBox.BringToFront;
        ErrorBox.Show;
      end;
    end;
  finally
    FreeLibrary(handle);

    DateTimeToString(res,'',now);
    buildListBox.Items.Insert(0,
    res + ': ' + 'parser.dll: closed.');

    Handle := 0;
  end;
end;

procedure TForm1.EditorOptions1Click(Sender: TObject);
begin
  TabSheet_Options.Visible := true;
  TabSheet_Options.Enabled := true;
  TabSheet_Options.SetFocus;

  MainPageControl.ActivePage := TabSheet_Options;
  DFrameEditOptions.Visible := true;
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
    S1 := DFrameFoldersLocal.UserHomeFolder.Selected.Text;
    ShowMessage(S1);
    GetSubDirectories(GetShellFolder(CSIDL_PERSONAL),sl);
    ErrorBox.Text(sl.Text);
    ErrorBox.BringToFront;
    ErrorBox.Show;

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
      ErrorBox.BringToFront;
      ErrorBox.Show;
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
          ErrorBox.BringToFront;
          ErrorBox.Show;
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
  PanelResizer.Align := alClient;
  PanelResizer.Visible := true;

  C64ScreenTimer.Enabled := false;
  DFrameC64KeyBoard.Visible := false;

  DFrameEdit.Visible := false;
  DFrameTeamServer.Visible := false;

  DFrameFoldersLocal.Visible := true;
  DFrameFoldersRemote.Visible := true;

  DFrameLeftPanel.LeftPageControl.Pages[0].TabVisible := true;
  DFrameLeftPanel.LeftPageControl.Pages[1].TabVisible := true;
  DFrameLeftPanel.LeftPageControl.Pages[2].TabVisible := true;

  Splitter5.Visible := true;
  ModeButton.Visible := false;

  DFrameFontStyle.Visible := false;

  DFrameMembers.Visible := true;
  DFrameMembers.PageControl5.Visible := true;
  DFrameMembers.PageControl5.Pages[0].Visible := true;
  DFrameMembers.PageControl5.Pages[1].Visible := true;

  DFrameC64Drives.Visible := false;

  DFrameLeftPanel.LeftPageControl.Visible := true;
  DFrameHelpTopic.Visible := false;

  DFrameComputerOS.Visible := true;

  Panel22   .Visible := true;
  Splitter19.Visible := true;
  Splitter19.Left    := 650;

  if MainPageControl.ActivePage.Caption = 'C-64 Display' then
  begin
    C64ScreenTimer.Enabled := true;
    Panel22.Visible := false;

    DFrameTeamServer.Visible := false;
    DFrameEdit.Visible := false;

    DFrameC64KeyBoard.Visible := true;
    LogPanel.Visible := false;

    DFrameLeftPanel.LeftPageControl.Pages[0].TabVisible := false;
    DFrameLeftPanel.LeftPageControl.Pages[1].TabVisible := false;
    DFrameLeftPanel.LeftPageControl.Pages[2].TabVisible := true;

    DFrameMembers.PageControl5.Visible := false;
    DFrameMembers.Visible := false;

    DFrameC64Config.Visible := true;
    DFrameC64Drives.Visible := true;

    ModeButton.Visible := false;
    DFrameComputerOS.Visible := false;

  end else
  if MainPageControl.ActivePage.Caption = 'SQL-Builder' then
  begin
    DFrameLeftPanel.LeftPageControl.ActivePageIndex := 0;

    DFrameC64Config.Visible := false;
    DFrameC64Drives.Visible := false;

    DFrameFoldersLocal.Visible := true;
    DFrameFoldersRemote.Visible := true;

    DFrameEdit.Visible := true;
    DFrameEdit.PageControl2.Visible := true;
    DFrameEdit.PageControl2.ActivePageIndex := 3;

    DFrameMembers.PageControl5.Visible := true;
    DFrameMembers.PageControl5.ActivePageIndex := 1;
    DFrameMembers.PageControl5.ActivePageIndex := 0;
    DFrameMembers.Visible := true;
    DFrameMembers.ListBox1.Visible := true;

    ModeButton.Visible := false;
    LogPanel.Visible := true;

    DFrameEdit.PageControl3.Visible := false;
    DFrameEdit.Splitter1.Align := alRight;
    DFrameEdit.PageControl2.Align := alClient;

    DFrameComputerOS.Visible := false;
  end else
  if MainPageControl.ActivePage.Caption = 'Editor' then
  begin
    DFrameLeftPanel.LeftPageControl.ActivePageIndex := 1;

    DFrameC64Config.Visible := false;
    DFrameC64Drives.Visible := false;

    DFrameFoldersLocal.Visible := true;
    DFrameFoldersRemote.Visible := true;

    DFrameEdit.Visible := true;
    DFrameEdit.PageControl2.ActivePageIndex := 0;

    ModeButton.Visible := true;
    LogPanel.Visible := true;

    DFrameComputerOS.Visible := false;



    DFrameEdit.PageControl2.Align := alLeft;
    DFrameEdit.PageControl2.Width := 400;
    DFrameEdit.PageControl2.Visible := true;
    DFrameEdit.Splitter1.Align := alLeft;

    DFrameEdit.PageControl3.Visible := true;
    DFrameEditor.Visible := true;
    DFrameEditor.SynEdit1.SetFocus;
  end else
  if MainPageControl.ActivePage.Caption = 'Designer' then
  begin
    DFrameLeftPanel.LeftPageControl.ActivePageIndex := 0;

    DFrameC64Config.Visible := false;
    DFrameC64Drives.Visible := false;

    DFrameFoldersLocal.Visible := true;
    DFrameFoldersRemote.Visible := true;

    DFrameEdit.Visible := true;

    ModeButton.Visible := true;
    LogPanel.Visible := true;

    DFrameComputerOS.Visible := false;
  end else
  if MainPageControl.ActivePage.Caption = 'Console' then
  begin
    DFrameC64Config.Visible := false;
    DFrameC64Drives.Visible := false;

    DFrameFoldersLocal.Visible := true;
    DFrameFoldersRemote.Visible := true;

    DFrameLeftPanel.LeftPageControl.Pages[2].TabVisible := true;
    DFrameLeftPanel.LeftPageControl.Visible := true;
    DFrameLeftPanel.LeftPageControl.ActivePageIndex := 2;

    DFrameComputerOS.Visible := false;

    Console1DblClick(Console1);
    Console1.SetFocus;
  end else
  if MainPageControl.ActivePage.Caption = 'Help Authoring' then
  begin
    EditPanel.Visible := false;
    LogPanel .Visible := false;

    DFrameHelpAuthor.Visible := true;
    DFrameFontStyle .Visible := true;

    ModeButton.Visible := false;
    DFrameLeftPanel.LeftPageControl.Visible := false;
    DFrameHelpTopic.Visible := true;

    DFrameComputerOS.Visible := false;
  end;

  PanelResizer.Visible := false;
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
    DFrameChat.ircConnectButton.Enabled := false;
    DFrameChat.ListBox1.Items.Clear;

    idirc1.Host := 'irc.libera.chat';
    idirc1.Port := 6667;

    idirc1.Username := DFrameChat.ircUserName.Text;
    idirc1.Nick     := DFrameChat.ircUserName.Text;
    idirc1.Password := DFrameChat.ircUserPass.Text;

    idirc1.Connect(10000);
    idirc1.Join(DFrameChat.ircChannel.Text);

    // channels
    ircListLimit := 0;
    statusProgress.Max := 50;
    statusProgress.Position := 0;
    idirc1.SendCmd('LIST',ares);

    // users
    idirc1.SendCmd('NAMES ' + DFrameChat.ircChannel.Text,ares);
  except
    ErrorBox.Text('connect error');
    ErrorBox.BringToFront;
    ErrorBox.Show;
    DFrameChat.ircConnectButton.Enabled := true;
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
  DFrameChat.ircRichEdit.Lines.Add(S1);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  idIRC1.Say(
  DFrameChat.ircChannel.Text,
  DFrameChat.sendChatTextEdit.Text)
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
    DFrameChat.ListBox1.Items.Add(Ausers.Items[I].Nick);
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

  Panel1  .Color := clGray;
  Panel2  .Color := clGray;
  LogPanel.Color := clGray;
  Panel8  .Color := clGray;
  Panel12 .Color := clGray;

  JvSpeedButton1.Color := clGray;
  JvSpeedButton2.Color := clGray;
  JvSpeedButton4.Color := clGray;
  StartCompile.Color := clGray;
  StatusBar1.Color := clGray;

  PageControl1.Color := clGray;
  DFrameEdit.PageControl2.Color := clGray;
  DFrameEditOptions.PageControl3.Color := clGray;
  DFrameMembers.PageControl5.Color := clGray;
  DFrameChat.PageControl6.Color := clGray;
  DFrameChat.PageControl7.Color := clGray;
  DFrameChat.PageControl8.Color := clGray;

  DFrameChat.sendChatTextEdit.Color := clYellow;

//  ListBox1.Color := clSilver;
//  ListBox1.Font.Color := clBlack;

  DFrameChat.ListBox1.Color := clSilver;
  DFrameChat.ListBox1.Font.Color := clBlack;

  BuildListBox.Color := clSilver;
  BuildListBox.Font.Color := clBlack;

  if DFrameFoldersLocal <> nil then
  begin
    DFrameFoldersLocal.UserHomeFolder.Color := clSilver;
    DFrameFoldersLocal.UserHomeFolder.Font.Color := clBlack;
  end;

//  TreeView1.Color := clSilver;
//  TreeView1.Font.Color := clBlack;
//  TreeView3.Color := clSilver;
//  TreeView3.Font.Color := clBlack;

  DFrameLeftPanel.LeftPageControl.Color := clGray;
  DFrameEditOptions.ScrollBox1.Color := clGray;

  DFrameChat.ircChannelEdit.Color := clYellow;
  DFrameChat.ircUserName.Color := clYellow;
  DFrameChat.ircUserPass.Color := clYellow;
  DFrameChat.ircChannel.Color := clYellow;

  DFrameChat.ircLabelNick    .Font.Color := clWhite;
  DFrameChat.ircLabelPassword.Font.Color := clWhite;
  DFrameChat.ircLabelChannel .Font.Color := clWhite;

  DFrameChat.ircListBox.Color := clSilver;
  DFrameChat.ircListBox.Font.Color := clBlack;

  DFrameChat.ircTopicEdit.Color := clYellow;
  DFrameChat.ircRichEdit.Color  := clSilver;


  DFrameEditor.SynEdit1.Color := clBlue;
  DFrameEditor.SynEdit1.Font.Color := clYellow;
  DFrameEditor.SynEdit1.Gutter.Color := $00FF8000;

  DFrameEdit.SynEdit2.Color := clBlue;
  DFrameEdit.SynEdit2.Font.Color := clYellow;
  DFrameEdit.SynEdit2.Gutter.Color := $00FF8000;

  DFrameEdit.SynEdit3.Color := clBlue;
  DFrameEdit.SynEdit3.Font.Color := clYellow;
  DFrameEdit.SynEdit3.Gutter.Color := $00FF8000;
(*
  DFrameEdit.SynEdit4.Color := clBlue;
  DFrameEdit.SynEdit4.Font.Color := clYellow;
  DFrameEdit.SynEdit4.Gutter.Color := $00FF8000;
*)
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

  Panel1  .Color := clBtnFace;
  Panel2  .Color := clBtnFace;
  LogPanel.Color := clBtnFace;
  Panel8  .Color := clBtnFace;
  Panel12 .Color := clBtnFace;

  JvSpeedButton1.Color := clBtnFace;
  JvSpeedButton2.Color := clBtnFace;
  JvSpeedButton4.Color := clBtnFace;
  StartCompile  .Color := clBtnFace;

  StatusBar1.Color := clBtnFace;

  DFrameChat.sendChatTextEdit.Color := clWhite;

  PageControl1.Color := clBtnFace;
  DFrameEdit.PageControl2.Color := clBtnFace;
  DFrameEditOptions.PageControl3.Color := clBtnFace;
  DFrameMembers.PageControl5.Color := clBtnFace;
  DFrameChat.PageControl6.Color := clBtnFace;
  DFrameChat.PageControl7.Color := clBtnFace;
  DFrameChat.PageControl8.Color := clBtnFace;

  DFrameLeftPanel.LeftPageControl.Color := clBtnFace;
  DFrameEditOptions.ScrollBox1.Color := clBtnFace;

//  ListBox1.Color := clWhite;
//  ListBox1.Font.Color := clBlack;

  DFrameChat.ListBox1.Color := clWhite;
  DFrameChat.ListBox1.Font.Color := clBlack;

  BuildListBox.Color := clWhite;
  BuildListBox.Font.Color := clBlack;

  DFrameFoldersLocal.UserHomeFolder.Color := clWhite;
  DFrameFoldersLocal.UserHomeFolder.Font.Color := clBlack;

//  TreeView1.Color := clWhite;
//  TreeView1.Font.Color := clBlack;

  DFrameChat.ircChannelEdit.Color := clWhite;
  DFrameChat.ircUserName.Color := clWhite;
  DFrameChat.ircUserPass.Color := clWhite;
  DFrameChat.ircChannel .Color := clWhite;

  DFrameChat.ircLabelNick    .Font.Color := clBlack;
  DFrameChat.ircLabelPassword.Font.Color := clBlack;
  DFrameChat.ircLabelChannel .Font.Color := clBlack;

  DFrameChat.ircListBox.Color := clWhite;
  DFrameChat.ircListBox.Font.Color := clBlack;

  DFrameChat.ircTopicEdit.Color := clWhite;
  DFrameChat.ircRichEdit.Color  := clWhite;

  DFrameEditor.SynEdit1.Color := clWhite;
  DFrameEditor.SynEdit1.Font.Color := clBlack;
  DFrameEditor.SynEdit1.Gutter.Color := clBtnFace;

  DFrameEdit.SynEdit2.Color := clWhite;
  DFrameEdit.SynEdit2.Font.Color := clBlack;
  DFrameEdit.SynEdit2.Gutter.Color := clBtnFace;

  DFrameEdit.SynEdit3.Color := clWhite;
  DFrameEdit.SynEdit3.Font.Color := clBlack;
  DFrameEdit.SynEdit3.Gutter.Color := clBtnFace;

  (*
  SynEdit4.Color := clWhite;
  SynEdit4.Font.Color := clBlack;
  SynEdit4.Gutter.Color := clBtnFace;
*)
  Width := width + 4;
  Width := width - 4;
  Form1.Resize;
end;

procedure TForm1.Console1DblClick(Sender: TObject);
begin
  Console1.Active := true;
  Console1.Boot;
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

    DFrameEditor.SynEdit1.InsertBlock(
    DFrameEditor.SynEdit1.CaretXY,
    DFrameEditor.SynEdit1.CaretXY, PWideChar(txt), true);
    DFrameEditor.SynEdit1.SetFocus;
  end;
end;

function TForm1.PutToC64Screen(X,Y: Integer; AChar: Char): Integer;
begin
  C64ScreenMap[X,Y] := WideChar($E000 + Ord(AChar));
end;

function TForm1.WriteToC64Screen(X,Y: Integer; AString: WideString): Integer;
var
  text: WideString;
  neu : WideString;
  I,J   : Integer;
  xpos,ypos : Integer;
  row, col: Integer;

  procedure helper(row,col:Integer);
  begin
    if ypos >= 25 then
    begin
    (*
      text := '';
      neu  := '';

      for row := 2 to 25 do
      text    := text + C64Screen.Lines.Strings[row-2];
      for col := 1 to 40 do
      begin
        C64ScreenMap[25,col] := WideChar($E000 + Ord(' '));
        neu := neu + WideChar($E000 + Ord(' '));
      end;
      text := text + neu;

      C64Screen.Lines.Text := text;
      xpos := 1;
      ypos := 25;
*)
      C64ScreenCursor.X := 1;
      C64ScreenCursor.Y := 1;
    end;
  end;
begin
  C64ScreenCursor.X := X;
  C64ScreenCursor.Y := Y;

  xpos := X;
  ypos := Y;

  for I := 1 to Length(AString) do
  begin
    C64ScreenMap[ypos,xpos] := WideChar($E000 + Ord(AString[I]));
    xpos := xpos + 1;
    DFrameC64Config.Label3.Caption := 'xpos: ' + IntToStr(xpos);
    DFrameC64Config.Label4.Caption := 'ypos: ' + IntToStr(ypos);
    if xpos >= 40 then
    begin
      xpos := 1;
      ypos := ypos + 1;
      if ypos > 24 then
      begin
        ypos := 1;
        C64ScreenCursor.X := xpos;
        C64ScreenCursor.Y := ypos;
      end;
    end;
  end;

  text := '';
  for row := 1 to 25 do
  begin
    for col := 1 to 40 do
    begin
      text := text + C64ScreenMap[row, col];
    end;
  end;

  C64Screen.Lines.Text := text;

//  C64ScreenCursor.X := xpos;
//  C64ScreenCursor.Y := ypos;
end;

procedure TGroupBox_Create(var Value: Variant; Args: TJvInterpreterArgs);
begin
  Value := O2V(TGroupBox.Create(V2O(Args.Values[0]) as TComponent));
end;

procedure TForm1.C64ScreenTimerTimer(Sender: TObject);
begin
  if C64ScreenCursorBlink = 0 then
  begin
    C64ScreenCursorBlink := 1;
    WriteToC64Screen(
    C64ScreenCursor.X,
    C64ScreenCursor.Y,WideChar($220));
  end else
  begin
    C64ScreenCursorBlink := 0;
    WriteToC64Screen(
    C64ScreenCursor.X,
    C64ScreenCursor.Y,' ');
  end;
end;

procedure TForm1.DesignerIconListView_StandardMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_Standard.BeginDrag(false);
end;

procedure TForm1.JvInspector1BeforeSelection(Sender: TObject;
  NewItem: TJvCustomInspectorItem; var Allow: Boolean);
begin
  Allow := true;
end;

procedure TForm1.PaintBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  GradientFormCaption: TJvGradientCaption;
  CheckListBox: TCheckListBox;
  CheckButton : TCheckBox;
begin
//  if not (Source is TMyTableListBox) then
//  exit;

  Form := TForm.CreateParented(SqlScrollBox.Handle);
  Form.Parent      := SqlScrollBox;
  Form.BorderStyle := bsSizeToolWin;
  Form.Left        := X;
  Form.Top         := Y;
  Form.Caption     :=
       DFrameMembers.ListBox1.Items.Strings[
       DFrameMembers.ListBox1.ItemIndex];
  Form.Width       := 200;

  GradientFormCaption := TJvGradientCaption.Create(Form);
  GradientFormCaption.StartColor     := clRed;
  GradientFormCaption.EndColor       := clYellow;
  GradientFormCaption.Font.Color     := clBlack;
  GradientFormCaption.FormCaption    := Form.Caption;
  GradientFormCaption.GradientSteps  := 100;
  GradientFormCaption.GradientActive := true;
  GradientFormCaption.Active         := true;

  CheckButton  := TCheckBox.Create(Form);
  CheckButton.Parent  := Form;
  CheckButton.Align   := alTop;
  CheckButton.Caption := 'Select All';
  CheckButton.OnClick := CheckButtonOnClick;
  CheckButton.Show;

  CheckListBox := TCheckListBox.Create(Form);
  CheckListBox.Parent := Form;
  CheckListBox.Align  := alClient;
  CheckListBox.Show;

//  DataBase1.Directory := 'E:\Program Files (x86)\Common Files\Borland Shared\Data';
  DataBase1.GetFieldNames(Form.Caption,CheckListBox.Items);
  Form.Show;
end;

procedure TForm1.PaintBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TListBox);
end;

procedure TForm1.TableListBox_MouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState;
  X,  Y : Integer);
begin
  TableListBox.BeginDrag(false);
end;

procedure TForm1.MSDOS3Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: Pascal - MS-DOS';
  ModeButton.Tag     := 10;

end;

procedure TForm1.WindowsNT32Bit2Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: Pascal - Windows';
  ModeButton.Tag     := 11;
end;

procedure TForm1.MSDOS2Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: dBASE - MS-DOS';
  ModeButton.Tag     := 20;
end;

procedure TForm1.Windows3111Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: dBASE - Win 3.11';
  ModeButton.Tag     := 21;
end;

procedure TForm1.WindowsNT32Bit1Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: dBASE - Win32 NT';
  ModeButton.Tag     := 22
end;

procedure TForm1.C64BASIC1Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: BASIC';
  ModeButton.Tag     := 3;
end;

procedure TForm1.C64BASIC2Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: BASIC C-64';
  ModeButton.Tag     := 30;
end;

procedure TForm1.MSDOS1Click(Sender: TObject);
begin
  ModeButton.Caption := 'Mode: BASIC MS-DOS';
  ModeButton.Tag     := 31;
end;

procedure TForm1.ChatWindow2Click(Sender: TObject);
begin
  if not(ChatWindow1.Checked) then
  begin
    ChatWindow1.Checked := true;
    ChatTabSheet.TabVisible := true;
    DFrameChat.Visible := true;
    MainPageControl.ActivePage := ChatTabSheet;
  end else
  begin
    ChatWindow1.Checked := false;
    ChatTabSheet.TabVisible := false;
    DFrameChat.Visible := false;
    MainPageControl.ActivePage := TabSheet2;
    DFrameEditor.SynEdit1.SetFocus;
  end;
end;

procedure TForm1.CheckButtonOnClick(Sender: TObject);
var
  I, J: Integer;
begin
  if not(Sender is TCheckBox) then
  exit;

  if (Sender as TCheckBox).Checked then
  begin
    for I := 0 to ((Sender as TCheckBox).Parent as TForm).ControlCount - 1 do
    begin
      if ((Sender as TCheckBox).Parent as TForm).Controls[I].ClassName = 'TCheckListBox' then
      begin
        for J := 0 to
        (((Sender as TCheckBox).Parent as TForm).Controls[I] as TCheckListBox).Count - 1 do
        (((Sender as TCheckBox).Parent as TForm).Controls[I] as TCheckListBox).Checked[J] := true;
        break;
      end;
    end;
  end else
  begin
    for I := 0 to ((Sender as TCheckBox).Parent as TForm).ControlCount - 1 do
    begin
      if ((Sender as TCheckBox).Parent as TForm).Controls[I].ClassName = 'TCheckListBox' then
      begin
        for J := 0 to
        (((Sender as TCheckBox).Parent as TForm).Controls[I] as TCheckListBox).Count - 1 do
        (((Sender as TCheckBox).Parent as TForm).Controls[I] as TCheckListBox).Checked[J] := false;
        break;
      end;
    end;
  end;
end;

procedure TForm1.PopupMenu_File_New_OtherClick(Sender: TObject);
begin
  DFrameHelpAuthor.Visible := false;

  EditPanel.Visible := true;

  DFrameEdit.Visible := false;
  DFrameTeamServer.Visible := true;

  NewModule_TabSheet.Visible := true;
  NewModule_TabSheet.Enabled := true;
  NewModule_TabSheet.SetFocus;

  MainPageControl.ActivePage := NewModule_TabSheet;

  DFrameHelpTopic.Visible := false;

  DFrameFontFace .Visible := false;
  DFrameFontColor.Visible := false;
  DFrameFontStyle.Visible := false;

  DFrameLeftPanel.LeftPageControl.Visible := true;
  DFrameLeftPanel.LeftPageControl.ActivePageIndex := 2;

  Panel8.Visible := true;
  DFrameComputerOS.Visible := true;
end;

// todo: setup !
procedure TForm1.SQLExplorer1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open',PAnsiChar(IniFile_SQL_Explorer),
  nil,nil,SW_SHOWNORMAL);
end;

procedure TForm1.SQLMonitor1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open',PAnsiChar(IniFile_SQL_Monitor),
  nil,nil,SW_SHOWNORMAL);
end;

procedure TForm1.ImageEditor1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open',PAnsiChar(IniFile_Image_Edit),
  nil,nil,SW_SHOWNORMAL);
end;

procedure TForm1.LoadIniFile;
var
  ini: TIniFile;
  I: Integer;
  S: String;

  procedure C64AddKeyMap(
    AKeyString    : String;
    AStringList   : TStrings;
    ADefaultString: String);
  begin
    with DFrameC64Config.ValueListEditor1 do
    begin
      InsertRow(AKeyString,ADefaultString,true);
      ItemProps[AKeyString].EditStyle := esPickList;
      ItemProps[AKeyString].PickList.Assign(AStringList);
    end;
  end;
Begin
  try
    ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
    try
      IniFile_SQL_Explorer := ini.ReadString('common','sqlExplorer',iniFile_SQL_Explorer);
      IniFile_SQL_Monitor  := ini.ReadString('common','sqlMonitor' ,iniFile_SQL_Monitor );
      IniFile_Image_Edit   := ini.ReadString('common','imageEdit'  ,iniFile_Image_Edit  );
      IniFile_IDE_Language := ini.ReadString('common','language'   ,iniFile_IDE_Language);

      IniFile_AsmOutput  := ini.ReadString('asm','dBaseAsmOutput' ,IniFile_AsmOutput);
      IniFile_AsmInclude := ini.ReadString('asm','dBaseAsmInclude',IniFile_AsmInclude);
      IniFile_AsmYasm    := ini.ReadString('asm','dBaseAsmYasm'   ,IniFile_AsmYasm);

      for I := 0 to 60 do
      begin
        S := ini.ReadString('keyboard','key' + IntToStr(I),'default');
        C64AddKeyMap('key' + IntToStr(I), dropList,S);
      end;
    finally
      ini.Free;
    end;
  except
    on E: Exception do
    begin
      ErrorBox.Text(
      'could not open ini file.' + #10 +
      'Error: ' + E.Message);
      ErrorBox.BringToFront;
      ErrorBox.Show;
    end;
  end;
end;

procedure TForm1.SaveIniFile;
var
  ini: TIniFile;
  I: Integer;
begin
  try
    ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
    try
      ini.WriteString('common','sqlExplorer',IniFile_SQL_Explorer);
      ini.WriteString('common','sqlMonitor' ,IniFile_SQL_Monitor);
      ini.WriteString('common','imageEdit'  ,IniFile_Image_Edit);
      ini.WriteString('common','language'   ,IniFile_IDE_Language);

      ini.WriteString('asm','AsmOutput' ,IniFile_AsmOutput);
      ini.WriteString('asm','AsmInclude',IniFile_AsmInclude);
      ini.WriteString('asm','AsmYasm'   ,IniFile_AsmYasm);

      for I := 0 to 60 do
      begin
        ini.WriteString('keyboard','key' + IntToStr(I),
        DFrameC64Config.ValueListEditor1.Values['key' + IntToStr(i)]);
      end;
    finally
      ini.Free;
    end;
  except
    on E: Exception do
    begin
      ErrorBox.Text(
      'could not save program values to ini file.' + #10 +
      'Error: ' + E.Message);
      ErrorBox.BringToFront;
      ErrorBox.Show;
    end;
  end;
end;

procedure TForm1.DesignerIconListView_BoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_Box.BeginDrag(false);
end;

procedure TForm1.DesignerIconListView_ListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_List.BeginDrag(false);
end;

procedure TForm1.DesignerIconListView_ButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_Button.BeginDrag(false);
end;

procedure TForm1.DesignerIconListView_GridMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_Grid.BeginDrag(false);
end;

procedure TForm1.DesignerIconListView_DataBaseMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_DataBase.BeginDrag(false);
end;

procedure TForm1.DesignerIconListView_ImageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_Image.BeginDrag(false);
end;

procedure TForm1.DesignerIconListView_ScrollMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_Scroll.BeginDrag(false);
end;

procedure TForm1.DesignerIconListView_CSMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_CS.BeginDrag(false);
end;

procedure TForm1.DesignerIconListView_EditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DFrameLeftPanel.DesignerIconListView_Edit.BeginDrag(false);
end;

procedure TForm1.JvApplicationHotKey1HotKey(Sender: TObject);
begin
  ShellExecute(Handle,'open',
  PChar(ExtractFilePath(Application.ExeName) + 'Editor.chm'),
  nil, nil, SW_SHOW);
end;

procedure TForm1.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
var
  sl: TStrings;
  Node, Child: TTreeNode;
  sheet: TTabSheet;
  I, J, K, num: Integer;
  image: TImage;
  key : Char;
  S: String;
begin
  // C64 input:
  if MainPageControl.ActivePage = C64TabSheet then
  begin
    image := TImage.Create(nil);
    try
      key := Chr(Ord(msg.CharCode));
      case key of
        '1': image.Tag := 1;
        '2': image.Tag := 2;
        '3': image.Tag := 3;
        '4': image.Tag := 4;
        '5': image.Tag := 5;
        '6': image.Tag := 6;
        '7': image.Tag := 7;
        '8': image.Tag := 8;
        '9': image.Tag := 9;
        '0': image.Tag := 10;

        'Q','q': image.Tag := 17;
        'W','w': image.Tag := 18;
        'E','e': image.Tag := 19;
        'R','r': image.Tag := 20;
        'T','t': image.Tag := 21;
        'Z','z': image.Tag := 22;
        'U','u': image.Tag := 23;
        'I','i': image.Tag := 24;
        'O','o': image.Tag := 25;
        'P','p': image.Tag := 26;

        'A','a': image.Tag := 33;
        'S','s': image.Tag := 34;
        'D','d': image.Tag := 35;
        'F','f': image.Tag := 36;
        'G','g': image.Tag := 37;
        'H','h': image.Tag := 38;
        'J','j': image.Tag := 39;
        'K','k': image.Tag := 40;
        'L','l': image.Tag := 41;

        'Y','y': image.Tag := 48;
        'X','x': image.Tag := 49;
        'C','c': image.Tag := 50;
        'V','v': image.Tag := 51;
        'B','b': image.Tag := 52;
        'N','n': image.Tag := 53;
        'M','m': image.Tag := 54;

        ';':  image.Tag := 55;
        ':':  image.Tag := 56;

        #32: image.Tag := 61;
        #13: image.Tag := 45;

        Chr(VK_UP   ): image.Tag := 59;
        Chr(VK_DOWN ): image.Tag := 59;
        Chr(VK_LEFT ): image.Tag := 60;
        Chr(VK_RIGHT): image.Tag := 60;
      end;
      DFrameC64KeyBoard.Image2Click(image);
    finally
      image.Free;
    end;
  end else
  if (Msg.CharCode = Ord('N')) then
  begin
    // add normal topic
    if Windows.GetKeyState(VK_CONTROL) < 0 then
    begin
      if DFrameHelpTopic.TreeView1.Focused then
      begin
        sl := TStringList.Create;
        sl.Add('New Topic ' + IntToStr(topicCount));
        sl.Add(IntToStr(topicCount));
        inc(topicCount);

        DFrameHelpTopic.TreeView1.Items.AddObject(
        DFrameHelpTopic.TreeView1.Selected,sl.Strings[0],sl);
        DFrameHelpTopic.TreeView1.Tag := topicCount;

        DFrameHelpTopic.CreateNewTab(sl.Strings[0]);
        Handled := true;
      end;
    end else
    // add sub-topic
    if Windows.GetKeyState(VK_SHIFT) < 0 then
    begin
      if DFrameHelpTopic.TreeView1.Focused then
      begin
        sl := TStringList.Create;
        sl.Add('New Topic ' + IntToStr(topicCount));
        sl.Add(IntToStr(topicCount));
        inc(topicCount);

        DFrameHelpTopic.TreeView1.Items.AddChildObject(
        DFrameHelpTopic.TreeView1.Selected,sl.Strings[0],sl);
        DFrameHelpTopic.TreeView1.Tag := topicCount;

        DFrameHelpTopic.CreateNewTab(sl.Strings[0]);
        Handled := true;
      end;
    end;
  end else
  // find/search
  if (msg.CharCode = Ord('F')) or (msg.CharCode = Ord('f')) then
  begin
    if Windows.GetKeyState(VK_CONTROL) < 0 then
    begin
      if DFrameHelpTopic.TreeView1.Focused then
      begin
        DFrameHelpTopic.JvEdit1.SetFocus;
        Handled := true;
      end else
      if DFrameHelpTopic.JvEdit1.Focused then
      begin
        Handled := true;
      end;
    end;
  end else
  // delete items
  if msg.CharCode = VK_DELETE then
  begin
    if DFrameHelpTopic.TreeView1.Focused then
    begin
      if DFrameHelpTopic.TreeView1.Items.Count = 1 then
      exit;
      Node := DFrameHelpTopic.TreeView1.Selected;
      num  := Node.Count;
      if num < 1 then
      (DFrameHelpAuthor.Controls[2] as TPageControl).Pages[1].Free
      else
      for J := 0 to DFrameHelpAuthor.ControlCount - 1 do
      begin
        if (DFrameHelpAuthor.Controls[J] is TPageControl) then
        begin
          for K := 0 to (DFrameHelpAuthor.Controls[J] as TPageControl).PageCount - 2 do
          begin
            if (DFrameHelpAuthor.Controls[J] as TPageControl).Pages[K].Caption = Node.Text then
               (DFrameHelpAuthor.Controls[J] as TPageControl).Pages[K].Free;
          end;
        end;
      end;
      Node.Delete;
      Handled := true;
    end;
  end else
  if msg.CharCode = VK_F1 then
  begin
    ShellExecute(Handle,'open',
    PChar(ExtractFilePath(Application.ExeName) + 'Editor.chm'),
    nil, nil, SW_SHOW);
    Handled := true;
  end else
  if msg.CharCode = VK_F2 then
  begin
    if DFrameEditor.SynEdit1.Focused then
    begin
    showmessage('ccc');
      StartCompileClick(self);
    end else
    if DFrameHelpTopic.TreeView1.Focused then
    begin
      DFrameHelpTopic.TreeView1.ReadOnly := false;
      DFrameHelpTopic.TreeView1.Selected.EditText;
    end;
    Handled := true;
  end;
end;

procedure TForm1.Compile_FPC_MenuItemClick(Sender: TObject);
begin
  uncheck_run_menues;
  Run_MenuItem.Caption := 'Run Compiler (FPC)';
  Run_MenuItem.Tag     := 1;
  Compile_FPC_MenuItem.Checked := true;
end;

procedure TForm1.Internal_FPC_Interpreter_MenuItemClick(Sender: TObject);
begin
  uncheck_run_menues;
  Run_MenuItem.Caption := 'Run with Interpreter';
  Run_MenuItem.Tag     := 0;
  Internal_FPC_Interpreter_MenuItem.Checked := true;
end;

procedure TForm1.Help1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open',
  PChar(ExtractFilePath(Application.ExeName) + 'Editor.chm'),
  nil, nil, SW_SHOW);
end;

procedure TForm1.Translate_TO_gnuCPPClick(Sender: TObject);
begin
   uncheck_run_menues;

   Run_MenuItem.Caption := 'Run Translate (GNU C++)';
   Run_MenuItem.Tag     := 2;

   Translate_to_gnuCpp.Checked := true;
   Translate_MenuItem.Checked  := true;
end;

procedure TForm1.uncheck_run_menues;
begin
  Translate_MenuItem.Checked                := false;
  Translate_to_gnuCpp.Checked               := false;
  Internal_FPC_Interpreter_MenuItem.Checked := false;
  Compile_FPC_MenuItem.Checked              := false;
  InternalCompiler1.Checked                 := false;
end;

procedure TForm1.Run_MenuItemClick(Sender: TObject);
var
  S: String;
  CommandLine: String;
begin
  case Run_MenuItem.Tag of
    0:
    begin
      if (Length(Trim(DFrameEditor.SynEdit1.Lines.Text)) < 1) then
      begin
        ErrorBox.Text('Warning:' + #10 + 'no source code data.');
        ErrorBox.BringToFront;
        ErrorBox.Show;

        exit;
      end else
      begin
        try
          StartCompileClick(Sender);
        except
          on E: Exception do
          begin
            MainPageControl.ActivePageIndex := 0;

            ErrorBox.Text(E.Message);
            ErrorBox.BringToFront;
            ErrorBox.Show;
            
            DFrameEditor.SynEdit1.SetFocus;
          end;
        end;
      end;
    end;
    1:
    begin
      ShowMessage('Compile FPC');
    end;
    2:
    begin
      ShowMessage('translate g++');
    end;
    90:
    begin
      S := ExtractFilePath(Application.ExeName);

      if not(DirectoryExists(S + 'dev')) then
      CreateDir(S + 'dev');
      if not(DirectoryExists(S + 'dev\asm')) then
      CreateDir(S + 'dev\asm');
      if not(DirectoryExists(S + 'dev\tmp')) then
      CreateDir(S + 'dev\tmp');

      JvDataEmbedded1.DataSaveToFile(S + 'dev\asm\head.inc');
      JvDataEmbedded2.DataSaveToFile(S + 'dev\asm\impdll.inc');
      //
      JvDataEmbedded3.DataSaveToFile(S + 'dev\tmp\code.asm');
      JvDataEmbedded4.DataSaveToFile(S + 'dev\tmp\data.asm');
      JvDataEmbedded5.DataSaveToFile(S + 'dev\tmp\pe32.asm');

      if not JclSysInfo.GetEnvironmentVar('COMSPEC', CommandLine)
      or (Length(CommandLine) = 0) then
      CommandLine := 'COMMAND.EXE';

      JvCreateProcess1.CurrentDirectory := S + 'dev\tmp';
      JvCreateProcess1.CommandLine := S + 'dev\tmp\command.bat';
      (*
      'E:\nasm\yasm.exe ' +
      S + 'dev\tmp\pe32.asm' + ' ' +
      S + 'dev\tmp\pe32.exe' ;*)
      JvCreateProcess1.Run;

    end else begin
      ShowMessage('not implemented');
    end;
  end;
end;

procedure TForm1.LeftPageControlChange(Sender: TObject);
begin
  if DFrameLeftPanel.LeftPageControl.ActivePage.Caption = 'Project' then
  begin
    MainPageControl.ActivePageIndex := 0;
    DFrameTeamServer.Visible := false;
    DFrameEdit.Visible := true;
  end else
  if DFrameLeftPanel.LeftPageControl.ActivePage.Caption = 'Design' then
  begin
    MainPageControl.ActivePageIndex := 4;
    DFrameTeamServer.Visible := false;
    DFrameEdit.Visible := true;
  end else
  if DFrameLeftPanel.LeftPageControl.ActivePage.Caption = 'Folder''s' then
  begin
    MainPageControl.ActivePageIndex := 8;
    DFrameEdit.Visible := false;
    DFrameTeamServer.Visible := true;
  end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  if tipday <> nil then
  begin
    Timer1.Enabled := true;
    PanelResizer.BringToFront;
    PanelResizer.Align := alClient;
    PanelResizer.Visible := true;
    exit;
  end;

  PanelResizer.BringToFront;
  PanelResizer.Visible := true;

  tipday := TJvTipOfDay.Create(Form1);

  tipday.TipFont.Name := 'Consolas';
  tipday.TipFont.Size := 10;

  tipday.Tips.Add('The Free Pascal Compiler (FPC) can create Applications for multiple platforms ?');
  tipday.Tips.Add('Pascal is not dead.');
  tipday.Tips.Add('Pascal is a very good beginner Language (beside BASIc).');
  tipday.Execute;
end;

procedure TForm1.NewProjectPageControlChange(Sender: TObject);
var
  S: String;
begin
  DFrameNewProject.Visible := false;

  S := NewProjectPageControl.ActivePage.Caption;
  if S = 'Application' then
  begin
    DFrameNewProject.Visible := true;
    DFrameNewProject.NewApplication_ListView.Visible := true;
  end;
end;

procedure TForm1.InternalCompiler1Click(Sender: TObject);
begin
  uncheck_run_menues;
  Run_MenuItem.Caption := 'Run Internal Compiler';
  Run_MenuItem.Tag     := 90;
  InternalCompiler1.Checked := true;
end;

procedure TForm1.CreateSimpleProgram(AType: myAppType);
begin
  if atMSDOS in AType then
  begin
    if atPascal    in AType then begin CreateSimpleDos32PascalProgram   ; end else
    if atBASIC     in AType then begin CreateSimpleDos32BasicProgram    ; end else
    if atdBase     in AType then begin CreateSimpleDos32dBaseProgram    ; end else
    if atcLISP     in AType then begin CreateSimpleDos32cLispProgram    ; end else
    if atAssembler in AType then begin CreateSimpleDos32AssemblerProgram; end else
    raise Exception.Create('MSDos not supported');
  end else
  if atWin32 in AType then
  begin
    if atPascal    in AType then begin CreateSimpleWin32PascalProgram   ; end else
    if atBASIC     in AType then begin CreateSimpleWin32BasicProgram    ; end else
    if atdBase     in AType then begin CreateSimpleWin32dBaseProgram    ; end else
    if atcLISP     in AType then begin CreateSimpleWin32cLispProgram    ; end else
    if atAssembler in AType then begin CreateSimpleWin32AssemblerProgram; end else
    raise Exception.Create('Win32 not supported');
  end;
end;

procedure TForm1.CreateSimpleDos32BasicProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// dos32'       + sLineBreak +
  '10 CLS'         + sLineBreak +
  '20 PRINT "Hello World"'      + sLineBreak ;

  SetEditMisc;
end;
procedure TForm1.CreateSimpleDos32cLispProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// dos32'       + sLineBreak +
  '(+ 2 3)'        + sLineBreak ;

  SetEditMisc;
end;
procedure TForm1.CreateSimpleDos32AssemblerProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// dos32'       + sLineBreak +
  'mov eax'        + sLineBreak +
  'ret'            + sLineBreak ;

  SetEditMisc;
end;

procedure TForm1.CreateSimpleWin32BasicProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// win32'       + sLineBreak +
  '10 CLS'         + sLineBreak +
  '20 PRINT "Hello World"'      + sLineBreak ;

  SetEditMisc;
end;
procedure TForm1.CreateSimpleWin32cLispProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// win32'       + sLineBreak +
  '(+ 2 3)'        + sLineBreak ;

  SetEditMisc;
end;
procedure TForm1.CreateSimpleWin32AssemblerProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// win32'       + sLineBreak +
  'mov eax'        + sLineBreak +
  'ret'            + sLineBreak ;

  SetEditMisc;
end;

procedure TForm1.CreateSimpleWin32PascalProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// win32'       + sLineBreak +
  'program test1;' + sLineBreak +
  'begin'          + sLineBreak +
  'end.'           + sLineBreak ;

  SetEditMisc;
end;
procedure TForm1.CreateSimpleWin32PascalLibrary;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// win32'       + sLineBreak +
  'library test1;' + sLineBreak +
  'begin'          + sLineBreak +
  'end.'           + sLineBreak ;

  SetEditMisc;
end;

procedure TForm1.CreateSimpleDos32PascalProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// dos32'       + sLineBreak +
  'program test1;' + sLineBreak +
  'begin'          + sLineBreak +
  'end.'           + sLineBreak ;

  SetEditMisc;
end;
procedure TForm1.CreateSimpleDos32PascalLibrary;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// dos32'       + sLineBreak +
  'library test1;' + sLineBreak +
  'begin'          + sLineBreak +
  'end.'           + sLineBreak ;

  SetEditMisc;
end;

procedure TForm1.CreateSimpleDos32PascalUnit;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// This File was created automatically' + sLineBreak +
  '// Press F2-key to execute it.'         + sLineBreak +
  '// dos32'                               + sLineBreak +
  'unit main;'                             + sLineBreak +
  ''                                       + sLineBreak +
  'procedure main;'                        + sLineBreak +
  'begin'                                  + sLineBreak +
  '  WriteLn(''Hello World !'');'          + sLineBreak +
  'end;'                                   + sLineBreak +
  ''                                       + sLineBreak +
  'end.'                                   + sLineBreak ;

  DFrameTeamServer.Visible := false;
  DFrameHelpAuthor.Visible := false;
  DFrameHelpTopic .Visible := false;

  DFrameEdit.Visible := true;

  DFrameLeftPanel.LeftPageControl.Visible := true;
  MainPageControl.ActivePageIndex := 0;
  DFrameEditor.SynEdit1.SetFocus;
end;

procedure TForm1.SetEditMisc;
begin
  DFrameTeamServer.Visible := false;
  DFrameHelpAuthor.Visible := false;
  DFrameHelpTopic .Visible := false;

  DFrameEdit.Visible := true;

  DFrameLeftPanel.LeftPageControl.Visible := true;
  MainPageControl.ActivePageIndex := 0;
  DFrameEditor.SynEdit1.SetFocus;
end;

procedure TForm1.CreateSimpleWin32PascalUnit;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// This File was created automatically' + sLineBreak +
  '// Press F2-key to execute it.'         + sLineBreak +
  '// win32'                               + sLineBreak +
  'unit main;'                             + sLineBreak +
  ''                                       + sLineBreak +
  'interface'                              + sLineBreak +
  'uses'                                   + sLineBreak +
  '  Forms, Dialogs;'                      + sLineBreak +
  'type'                                   + sLineBreak +
  '  TDemo = class(TForm)'                 + sLineBreak +
  '  private'                              + sLineBreak +
  '  public'                               + sLineBreak +
  '  end;'                                 + sLineBreak +
  'var'                                    + sLineBreak +
  '  Form1: TDemo;'                        + sLineBreak +
  'implementation'                         + sLineBreak +
  ''                                       + sLineBreak +
  'procedure main;'                        + sLineBreak +
  'begin'                                  + sLineBreak +
  '  Form1 := TForm.Create(Application);'  + sLineBreak +
  '  Form1.Caption := ExtractFileName(Application.ExeName);' + sLineBreak +
  '  Form1.Left   := 100;'                 + sLineBreak +
  '  Form1.Top    := 100;'                 + sLineBreak +
  '  Form1.Width  := 300;'                 + sLineBreak +
  '  Form1.Height := 200;'                 + sLineBreak +
  '  Form1.ShowModal;'                     + sLineBreak +
  'end;'                                   + sLineBreak +
  ''                                       + sLineBreak +
  'end.'                                   + sLineBreak ;

  SetEditMisc;
end;

procedure TForm1.CreateSimpleDos32dBaseProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// This File was created automatically' + sLineBreak +
  '// Press F2-key to execute it.'         + sLineBreak +
  '// dos32'                               + sLineBreak +
  'use tabs';

  SetEditMisc;
end;

procedure TForm1.CreateSimpleWin32dBaseProgram;
begin
  DFrameEditor.Visible := true;
  EditPanel.Visible := true;
  DFrameEditor.SynEdit1.Text :=
  '// This File was created automatically' + sLineBreak +
  '// Press F2-key to execute it.'         + sLineBreak +
  ''                                       + sLineBreak +
  '# define TESTMACRO 42         // macro for: number'  + sLineBreak +
  '# define MACRO2    "string"   // macro for: string'  + sLineBreak +
  ''                                                    + sLineBreak +
  '** End of Header'          + sLineBreak +
  'parameter bModal'          + sLineBreak +
  'local f = new Form1()'     + sLineBreak +
  'if bModal == .T.'          + sLineBreak +
  '  f.open()'                + sLineBreak +
  'endif'                     + sLineBreak +
  ''                          + sLineBreak +
  'class foo of form'         + sLineBreak +
  '   with ( this )'          + sLineBreak +
  '   endwith'                + sLineBreak +
  ''                          + sLineBreak +
  '   this.container  = new container ( this )'          + sLineBreak +
  '   this.pushbutton = new pushbutton( this.container)' + sLineBreak +
  '   with (this.pushbutton)' + sLineBreak +
  '     foo.xxx = 4'          + sLineBreak +
  '     bool = .F.'           + sLineBreak +
  '     fatz = "sssss"'       + sLineBreak +
  '     futz = ''xxxx'''      + sLineBreak +
  '     baz = [ \"dddd 22 ]'  + sLineBreak +
  '   endwith'                + sLineBreak +
  ''                          + sLineBreak +
  '   procedure dummy1(p1,p2,p3)' + sLineBreak +
  '   return'                 + sLineBreak +
  ''                          + sLineBreak +
  '   function dummy2(p1)'    + sLineBreak +
  '     baz = 32'                      + sLineBreak +
  '   return ("foobar" + ddd + "goo")' + sLineBreak +
  ''                          + sLineBreak +
  'endclass'                  + sLineBreak;

  SetEditMisc;
end;

procedure TForm1.Windows64Bit1Click(Sender: TObject);
begin
//  CreateSimpleDos32Program;
end;

procedure TForm1.Windows32Bit1Click(Sender: TObject);
begin
//  CreateSimpleDos32Program;
end;

procedure TForm1.MSDOS32Bit1Click(Sender: TObject);
begin
//  CreateSimpleDos32Program;
end;

procedure TForm1.Cut1Click(Sender: TObject);
begin
  DFrameEditor.SynEdit1.CutToClipboard;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
  DFrameEditor.SynEdit1.CopyToClipboard;
end;

procedure TForm1.Paste1Click(Sender: TObject);
begin
  DFrameEditor.SynEdit1.PasteFromClipboard;
end;

procedure TForm1.Delete1Click(Sender: TObject);
begin
  DFrameEditor.SynEdit1.SelText := '';
end;

procedure TForm1.Console1CommandExecute(
  Sender              : TCustomConsole;
  ACommand            : String;
  var ACommandFinished: Boolean);
  var
  S: String;
begin
  S := UpperCase(Trim(ACommand));
  if S = 'CLS' then
  begin
    Console1.Clear;
  end else
  if S = 'DIR' then
  begin
    Console1.Writeln('listing of directory:');
  end;

  ACommandFinished := true;
end;

procedure TForm1.CreateNewButtonClick(Sender: TObject);
begin
  if Length(Trim(ProjectNameEdit.Text)) < 1 then
  begin
    ProjectNameEdit.Color := clRed;
    ProjectNameEdit.Font.Color := clYellow;

    ErrorBox.Text('Error: No projectname given.');
    ErrorBox.BringToFront;
    ErrorBox.Show;

    exit;
  end else

(*
  if Form1.DFrameComputerOS.JvCheckBox5.Checked then
  begin
    // Pascal
    if Form1.DFrameComputerOS.JvCheckBox10.Checked then
    begin
      if atPascal in
      CreateSimpleWin32Program;
      exit;
    end else
    // BASIC
    if Form1.DFrameComputerOS.JvCheckBox11.Checked then
    begin
      exit;
    end else
    // dBase
    if Form1.DFrameComputerOS.JvCheckBox12.Checked then
    begin
      CreateSimpleWin32dBaseProgram;
      exit;
    end;
  end else
  if Form1.DFrameComputerOS.JvCheckBox6.Checked then
  begin
    // Pascal
    if Form1.DFrameComputerOS.JvCheckBox10.Checked then
    begin
      CreateSimpleDos32Program;
      exit;
    end else
    // BASIC
    if Form1.DFrameComputerOS.JvCheckBox11.Checked then
    begin
      exit;
    end else
    // dBase
    if Form1.DFrameComputerOS.JvCheckBox12.Checked then
    begin
      CreateSimpleDos32dBaseProgram;
      exit;
    end;
  end else
*)
  begin
    ErrorBox.Text('Information: not yet implemented.');
    ErrorBox.BringToFront;
    ErrorBox.Show;

    exit;
  end;
end;

procedure TForm1.ProjectNameEditEnter(Sender: TObject);
begin
  ProjectNameEdit.Color := clYellow;
end;

procedure TForm1.ProjectNameEditExit(Sender: TObject);
begin
  ProjectNameEdit.Color := clWhite;
end;

// TODO: !!!
procedure TForm1.ProjectNameEditDblClick(Sender: TObject);
begin
  if not(OpenDialog1.Execute) then
  exit;

  ProjectNameEdit.Text := 'C:\temp\test.pro';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  PanelResizer.Visible := false;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Hide;

  SplashForm.BringToFront;
  SplashForm.ProgressBar1.Position := 20;
  SplashForm.Caption := 'Free Memory ...';
  SplashForm.Show;

  Application.ProcessMessages;
  Sleep(2500);

  Action := caFree;
  Application.Terminate;
end;

procedure TForm1.C64ScreenKeyPress(Sender: TObject; var Key: WideChar);
begin
  key := #0
end;

procedure TForm1.EnvironmentOptions1Click(Sender: TObject);
begin
  TabSheet_Options.Visible := true;
  TabSheet_Options.Enabled := true;
  TabSheet_Options.SetFocus;

  DFrameEditOptions.Visible := false;
  MainPageControl.ActivePage := TabSheet_Options;
  DFrameEnvOptions.Visible := true;
end;

end.

