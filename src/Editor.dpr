program Editor;

uses
  Forms,
  EditorForm in 'EditorForm.pas' {Form1},
  AboutBox in 'AboutBox.pas' {OKRightDlg},
  FolderHelper in 'FolderHelper.pas',
  InputBox in 'InputBox.pas' {InputBoxWindow},
  ErrorBoxForm in 'ErrorBoxForm.pas' {ErrorBox},
  InfoBoxForm in 'InfoBoxForm.pas' {InfoBox},
  DesignerFrame in 'DesignerFrame.pas' {Frame1: TFrame},
  TeamServerFrame in 'TeamServerFrame.pas' {Frame2: TFrame},
  EditFrame in 'EditFrame.pas' {Frame3: TFrame},
  C64KeyBoard in 'C64KeyBoard.pas' {Frame4: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
