program Editor;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  Dialogs,
  Windows,
  SysUtils,
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
  FormatLayoutFrame in 'FormatLayoutFrame.pas' {Frame17: TFrame},
  SpreadFrame in 'SpreadFrame.pas' {Frame18: TFrame},
  SplashScreen in 'SplashScreen.pas' {SplashForm},
  EditorFrame in 'EditorFrame.pas' {Frame19: TFrame},
  ChatFrame in 'ChatFrame.pas' {Frame20: TFrame},
  OptionsFrame in 'OptionsFrame.pas' {Frame21: TFrame},
  EnvironmentFrame in 'EnvironmentFrame.pas' {Frame22: TFrame},
  LeftPanelFrame in 'LeftPanelFrame.pas' {Frame23: TFrame},
  SimulationFrame in 'SimulationFrame.pas' {Frame24: TFrame},
  SimulationLeftPanel in 'SimulationLeftPanel.pas' {Frame25: TFrame},
  reinit in 'reinit.pas',
  SimulationPartA in 'SimulationPartA.pas',
  SQLparser in 'SQLparser.pas',
  StandardMenuFrame in 'StandardMenuFrame.pas' {Frame26: TFrame},
  ProfileIconsFrame in 'ProfileIconsFrame.pas' {Frame27: TFrame},
  ProfileSettings in 'ProfileSettings.pas' {Frame28: TFrame},
  AboutFrame in 'AboutFrame.pas' {Frame29: TFrame},
  TeamServerSettings in 'TeamServerSettings.pas' {Frame30: TFrame},
  TimeLine in 'TimeLine.pas' {Frame31: TFrame},
  InterpreterClasses in 'InterpreterClasses.pas',
  SetupHttpServer in 'SetupHttpServer.pas' {Frame32: TFrame},
  WebServerUser in 'WebServerUser.pas' {Frame33: TFrame},
  SelectDataBase in 'SelectDataBase.pas' {Form2},
  GlobalDeclaration in 'GlobalDeclaration.pas',
  ResourceStrings in 'ResourceStrings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSplashForm, SplashForm);
  Application.Run;
end.
