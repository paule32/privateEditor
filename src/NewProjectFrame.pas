unit NewProjectFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ComCtrls, ImgList;

type
  TFrame8 = class(TFrame)
    NewProject_ImageList: TImageList;
    NewApplication_ListView: TListView;
    procedure NewApplication_ListViewDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame8.NewApplication_ListViewDblClick(Sender: TObject);
var
  S: String;
begin
  if NewApplication_ListView.Selected = nil then
  exit;

  S := NewApplication_ListView.Selected.Caption;
  if S = 'MS-DOS 32-Bit App' then
  begin
    // template code
    ShowMessage('xxx');
  end;
end;

end.
