unit SimulationLeftPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Grids, ValEdit, ComCtrls, JvExComCtrls, JvComCtrls,
  ExtCtrls, SimulationPartA;

type
  TFrame25 = class(TFrame)
    Panel1: TPanel;
    Splitter1: TSplitter;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    ScrollBox1: TScrollBox;
    ValueListEditor1: TValueListEditor;
    procedure FrameResize(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    Fwire1: TPaintWire;
  end;

implementation

{$R *.dfm}

uses
  EditorForm;

procedure TFrame25.FrameResize(Sender: TObject);
begin
  if Fwire1 = nil then
  begin
    Fwire1 := TPaintWire.Create(ScrollBox1);
    Fwire1.ToolSetLabel := 'Wire 1';
    Fwire1.Parent  := ScrollBox1;
    Fwire1.Left    :=  5;
    Fwire1.Top     :=  5;
    Fwire1.Width   := 64;
    Fwire1.Height  := 64;

    Fwire1.OnMouseDown := Panel2MouseDown;

    Fwire1.Visible := true;
  end;
end;

procedure TFrame25.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    if (Sender is TPaintWire) then (Sender as TPaintWire).BeginDrag(false);
  end;
end;

end.

