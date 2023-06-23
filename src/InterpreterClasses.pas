unit InterpreterClasses;

interface

uses
  Windows, Messages, Variants, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, JvEditor, JvEditorCommon, Menus,
  ShellApi, JvInterpreter, ImgList, JvComponent, JvFormPlacement,
  JvExControls, JvComponentBase;

var
  InterArgs: TJvInterpreterArgs;

  procedure initInterpreter;
implementation

uses JvJCLUtils, JvConsts,
  JvJVCLUtils, JvInterpreter_JvUtils,
  JvInterpreter_System, JvInterpreter_Windows, JvInterpreter_SysUtils,
  JvInterpreter_Graphics, JvInterpreter_Classes, JvInterpreter_Controls,
  JvInterpreter_StdCtrls, JvInterpreter_ComCtrls, JvInterpreter_ExtCtrls, JvInterpreter_Forms,
  JvInterpreter_Menus, JvInterpreter_Dialogs,
  JvInterpreterFm,
  JvInterpreter_JvEditor;

procedure initInterpreter;
begin
  InterArgs := TJvInterpreterArgs.Create;

  JvInterpreter_System.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_Windows.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_SysUtils.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_Classes.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_Graphics.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_Controls.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);

  JvInterpreter_StdCtrls.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_ComCtrls.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_ExtCtrls.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_Forms.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_Dialogs.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_Menus .RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);

  JvInterpreterFm.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);

  JvInterpreter_JvEditor.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
  JvInterpreter_JvUtils.RegisterJvInterpreterAdapter(GlobalJvInterpreterAdapter);
end;

end.
