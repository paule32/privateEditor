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
  C64KeyBoard in 'C64KeyBoard.pas' {Frame4: TFrame},
  C64ConfigFrame in 'C64ConfigFrame.pas' {Frame5: TFrame},
  MembersFrame in 'MembersFrame.pas' {Frame6: TFrame},
  C64DrivesFrame in 'C64DrivesFrame.pas' {Frame7: TFrame},
  NewProjectFrame in 'NewProjectFrame.pas' {Frame8: TFrame},
  FoldersLocal in 'FoldersLocal.pas' {Frame9: TFrame},
  FoldersRemote in 'FoldersRemote.pas' {Frame10: TFrame},
  HelpAuthorFrame in 'HelpAuthorFrame.pas' {Frame11: TFrame},
  FontStyleFrame in 'FontStyleFrame.pas' {Frame12: TFrame},
  FontColorFrame in 'FontColorFrame.pas' {Frame13: TFrame},
  FontFaceFrame in 'FontFaceFrame.pas' {Frame14: TFrame},
  HelpTopicFrame in 'HelpTopicFrame.pas' {Frame15: TFrame},
  ComputerFrame in 'ComputerFrame.pas' {Frame16: TFrame},
  InterpreterClasses in 'InterpreterClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
