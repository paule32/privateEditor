// This File was created automatically
// Press F2-key to execute it.
unit main;
interface
uses
  Forms, Dialogs;
type
  TDemo = class(TForm)
  private
  public
  end;
var
  Form1: TDemo;
implementation

procedure ButtonClick(Sender: TObject);
begin
  ShowMessage('very nice');
end;

procedure main;
var
  Button: TButton;
begin
  ShowMessage('This is a message, very important :)');
  
  Form1 := TForm.Create(Application);
  Form1.Caption := ExtractFileName(Application.ExeName);
  Form1.Left   := 100;
  Form1.Top    := 100;
  Form1.Width  := 300;
  Form1.Height := 200;
  
  Button := TButton.Create(Form1);
  Button.Parent  := Form1;
  Button.Caption := 'click me';
  Button.OnClick := ButtonClick;
  Button.Left    := 10;
  Button.Top     := 10;
  Button.Show;
  
  Form1.ShowModal;
end;

end.

