unit HelpTopicFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ComCtrls, ExtCtrls, Menus, JvMenus;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
