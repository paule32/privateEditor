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
uses
  EditorForm, ErrorBoxForm;

procedure TFrame8.NewApplication_ListViewDblClick(Sender: TObject);
var
  S: String;
begin
  if NewApplication_ListView.Selected = nil then
  exit;

  if Length(Trim(Form1.ProjectNameEdit.Text)) < 1 then
  begin
    Form1.ProjectNameEdit.Color := clRed;
    Form1.ProjectNameEdit.Font.Color := clYellow;

    ErrorBox.Text('Error: No projectname given.');
    ErrorBox.BringToFront;
    ErrorBox.Show;
  end;

  S := NewApplication_ListView.Selected.Caption;
  if (S = 'Windows 32-Bit App')
  or (S = 'Windows 64-Bit App') then
  begin
    // template code
    Form1.msdosapp := false;
    Form1.CreateSimpleWin32Program;
  end else
  if S = 'MS-DOS 32-Bit App' then
  begin
    // template code
    Form1.msdosapp := true;
    Form1.CreateSimpleMSDOSProgram;
  end;
end;

end.
