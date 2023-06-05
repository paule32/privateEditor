unit EditorForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, JvExControls, JvSpeedButton, ToolWin,
  SynEdit, JvGradientCaption, Menus, SynEditHighlighter, SynHighlighterPas,
  JvStringHolder, CtrlMenuBarButton, JvMenus;

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
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    SynEdit1: TSynEdit;
    JvGradientCaption1: TJvGradientCaption;
    SynPasSyn1: TSynPasSyn;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    localesList: TJvMultiStringHolder;
    PageControl1: TPageControl;
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
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
  TabSheet2.Caption := 'Unnamed';
  TabSheet3.Caption := 'Project';
  PageControl1.ActivePage := TabSheet1;
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
  I, J: Integer;
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

  IterateMyPopup(PopupMenu_File .Items,LS);
  IterateMyPopup(PopupMenu_Edit .Items,LS);
  IterateMyPopup(PopupMenu_Tools.Items,LS);
  IterateMyPopup(PopupMenu_Help .Items,LS);

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

end.
