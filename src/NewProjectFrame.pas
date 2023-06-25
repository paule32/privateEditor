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
    procedure NewApplication_ListViewClick(Sender: TObject);
  private
    procedure uncheckOS;
  public

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
    exit;
  end;

  S := NewApplication_ListView.Selected.Caption;
  if (S = 'Windows 32-Bit App')
  or (S = 'Windows 64-Bit App') then
  begin
    // template code
    Form1.msdosapp := false;
    if Form1.DFrameComputerOS.JvCheckBox3.Checked = true then
       Form1.CreateSimpleWin32dBaseProgram else
       Form1.CreateSimpleWin32Program;
  end else
  if S = 'MS-DOS 32-Bit App' then
  begin
    // template code
    Form1.msdosapp := true;

    if Form1.DFrameComputerOS.JvCheckBox3.Checked = true then
       Form1.CreateSimpleMSDOSdBaseProgram else
       Form1.CreateSimpleMSDOSProgram;
  end;
end;

procedure TFrame8.uncheckOS;
begin
//  Form1.DFrameComputerOS.JvCheckBox1.Checked := false;
//  Form1.DFrameComputerOS.JvCheckBox2.Checked := false;
//  Form1.DFrameComputerOS.JvCheckBox3.Checked := false;

  Form1.DFrameComputerOS.JvCheckBox4.Checked := false;
  Form1.DFrameComputerOS.JvCheckBox5.Checked := false;
  Form1.DFrameComputerOS.JvCheckBox6.Checked := false;
  Form1.DFrameComputerOS.JvCheckBox7.Checked := false;
  Form1.DFrameComputerOS.JvCheckBox8.Checked := false;
end;

procedure TFrame8.NewApplication_ListViewClick(Sender: TObject);
var
  S: String;
  procedure nyi;
  begin
    ErrorBox.Text('Information: not yet implemented.');
    ErrorBox.BringToFront;
    ErrorBox.Show;
  end;
begin
  if NewApplication_ListView.Selected = nil then
  exit;

  S := NewApplication_ListView.Selected.Caption;
  if (S = 'Windows 32-Bit App')
  or (S = 'Windows 64-Bit App') then
  begin
    uncheckOS;
    Form1.DFrameComputerOS.JvCheckBox5.Checked := true;
  end else
  if (S = 'MS-DOS 32-Bit App') then
  begin
    uncheckOS;
    Form1.DFrameComputerOS.JvCheckBox6.Checked := true;
  end else
  if (S = 'Linux 32-Bit') then
  begin
    uncheckOS;
    Form1.DFrameComputerOS.JvCheckBox7.Checked := true;
    nyi;
  end else
  if (S = 'Amiga 500') then
  begin
    uncheckOS;
    Form1.DFrameComputerOS.JvCheckBox8.Checked := true;
    nyi;
  end else
  begin
    uncheckOS;
    nyi;
  end;
end;

end.
