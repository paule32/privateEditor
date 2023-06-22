unit HelpTopicFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ComCtrls, ExtCtrls, Menus, JvMenus, StdCtrls, JvExStdCtrls,
  JvEdit;

type
  TFrame15 = class(TFrame)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TreeView2: TTreeView;
    Splitter2: TSplitter;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    TreeView3: TTreeView;
    Splitter3: TSplitter;
    JvPopupMenu1: TJvPopupMenu;
    AddTopic1: TMenuItem;
    RenameTopic1: TMenuItem;
    EditOperations1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N2: TMenuItem;
    Delete1: TMenuItem;
    AddSubtopic1: TMenuItem;
    Panel1: TPanel;
    JvEdit1: TJvEdit;
    Panel2: TPanel;
    JvEdit2: TJvEdit;
    Panel3: TPanel;
    JvEdit3: TJvEdit;
    procedure AddTopic1Click(Sender: TObject);
    procedure AddSubtopic1Click(Sender: TObject);
    procedure TreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeView1KeyPress(Sender: TObject; var Key: Char);
    procedure JvEdit1Enter(Sender: TObject);
    procedure JvEdit1Exit(Sender: TObject);
    procedure JvEdit2Enter(Sender: TObject);
    procedure JvEdit2Exit(Sender: TObject);
    procedure JvEdit3Enter(Sender: TObject);
    procedure JvEdit3Exit(Sender: TObject);
  private
    procedure CreateNewTab;
    procedure RichEdit1SelectionChange(Sender: TObject);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses
  EditorForm, SHDocVw, SynEdit, JvRuler;

procedure TFrame15.CreateNewTab;
var
  PageControl2 : TPageControl;

  TabSheet11    : TTabSheet;
  TabSheet21    : TTabSheet;
  TabSheet31    : TTabSheet;
  TabSheet41    : TTabSheet;

  SynEdit11     : TSynEdit;

  ScrollBox11   : TScrollBox;
  WebBrowser11  : TWebBrowser;

  JvRuler11     : TJvRuler;
  RichEdit11    : TRichEdit;
begin
  TabSheet11               := TTabSheet.Create(Form1.DFrameHelpAuthor.PageControl1);
  TabSheet11.PageControl   := Form1.DFrameHelpAuthor.PageControl1;
  TabSheet11.Align         := alClient;
  TabSheet11.Caption       := 'File 2';
  TabSheet11.TabVisible    := true;

  PageControl2             := TPageControl.Create(TabSheet11);
  PageControl2.Parent      := TabSheet11;
  PageControl2.Align       := alClient;
  PageControl2.TabPosition := tpBottom;
  PageControl2.Show;

  TabSheet21               := TTabSheet.Create(PageControl2);
  TabSheet21.PageControl   := PageControl2;
  TabSheet21.Align         := alClient;
  TabSheet21.Caption       := 'Source';
  TabSheet21.TabVisible    := true;

  TabSheet31               := TTabSheet.Create(PageControl2);
  TabSheet31.PageControl   := PageControl2;
  TabSheet31.Align         := alClient;
  TabSheet31.Caption       := 'Preview';
  TabSheet31.TabVisible    := true;
  TabSheet31.Show;

  ScrollBox11 := TScrollBox.Create(TabSheet31);
  ScrollBox11.Parent := TabSheet31;
  ScrollBox11.Align  := alClient;
  ScrollBox11.Show;

  WebBrowser11          := TWebBrowser.Create(ScrollBox11);
  // parent property is read-only unless cast
  TWinControl(WebBrowser11).Parent := ScrollBox11;
  WebBrowser11.HandleNeeded;

  WebBrowser11.Align    := alClient;
  WebBrowser11.Show;


  TabSheet41               := TTabSheet.Create(PageControl2);
  TabSheet41.PageControl   := PageControl2;
  TabSheet41.Align         := alClient;
  TabSheet41.Caption       := 'Design';
  TabSheet41.TabVisible    := true;

  SynEdit11             := TSynEdit.Create(TabSheet21);
  SynEdit11.Parent      := TabSheet21;
  SynEdit11.Align       := alClient;
  SynEdit11.Show;


  JvRuler11             := TJvRuler.Create(TabSheet41);
  JvRuler11.Parent      := TabSheet41;
  JvRuler11.Align       := alTop;
  JvRuler11.Show;

  RichEdit11                   := TRichEdit.Create(TabSheet41);
  RichEdit11.Parent            := TabSheet41;
  RichEdit11.Align             := alClient;
  RichEdit11.OnSelectionChange := RichEdit1SelectionChange;
  RichEdit11.Show;

  PageControl2.ActivePageIndex := 2;
end;

procedure TFrame15.RichEdit1SelectionChange(Sender: TObject);
begin
end;

procedure TFrame15.AddTopic1Click(Sender: TObject);
begin
  if TreeView1.Selected = nil then
  exit;

  TreeView1.Items.Add(TreeView1.Selected,'New Topic');
  TreeView1.FullExpand;
  CreateNewTab;
end;

procedure TFrame15.AddSubtopic1Click(Sender: TObject);
begin
  if TreeView1.Selected = nil then
  exit;

  TreeView1.Items.AddChild(TreeView1.Selected,'New Topic');
  TreeView1.FullExpand;
  CreateNewTab;
end;

// TODO: move topic's: !!!
procedure TFrame15.TreeView1KeyDown(
  Sender : TObject;
  var Key: Word;
  Shift  : TShiftState);
begin
  if (ssCtrl in Shift) then
  begin
    case Key of
      VK_UP:
      begin
      end;
      VK_DOWN:
      begin
      end;
      VK_LEFT:
      begin
      end;
      VK_RIGHT:
      begin
      end;
      Ord('f'): begin JvEdit1.SetFocus; end;
      Ord('F'): begin JvEdit1.SetFocus; end;
    end;
    exit;
  end;

  if key = VK_RETURN then
  begin
  end;
end;

procedure TFrame15.TreeView1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = 'F') or (key = 'f') then
  begin
    if JvEdit1.Focused then key := #0;
  end else
  if key = '+' then
  begin
    TreeView1.Selected.Expand(true);
    key := #0; // no beep
  end else
  if key = '-' then
  begin
    TreeView1.Selected.Collapse(true);
    key := #0; // no beep
  end;
end;

procedure TFrame15.JvEdit1Enter(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clYellow;
end;

procedure TFrame15.JvEdit1Exit(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clWhite;
end;

procedure TFrame15.JvEdit2Enter(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clYellow;
end;

procedure TFrame15.JvEdit2Exit(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clWhite;
end;

procedure TFrame15.JvEdit3Enter(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clYellow;
end;

procedure TFrame15.JvEdit3Exit(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clWhite;
end;

end.
