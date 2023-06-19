unit C64DrivesFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, JvExControls, JvArrowButton, Menus, JvMenus, ImgList;

type
  TFrame7 = class(TFrame)
    ScrollBox1: TScrollBox;
    ImageList1: TImageList;
    PopupMenu_Datasette: TJvPopupMenu;
    PopupMenu_Floppy: TJvPopupMenu;
    JvArrowButton1: TJvArrowButton;
    JvArrowButton2: TJvArrowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
