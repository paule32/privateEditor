program Editor;

uses
  Forms,
  EditorForm in 'EditorForm.pas' {Form1},
  AboutBox in 'AboutBox.pas' {OKRightDlg},
  FolderHelper in 'FolderHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
