unit SimulationFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFrame24 = class(TFrame)
    Panel1: TPanel;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    ScrollBox1: TScrollBox;
    procedure ScrollBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ScrollBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    inReposition : boolean;
    oldPos : TPoint;

    procedure ControlMouseUp(
      Sender: TObject;
      Button: TMouseButton;
      Shift : TShiftState; X, Y: Integer);
    procedure ControlMouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift : TShiftState; X, Y: Integer);
    procedure ControlMouseMove(
      Sender: TObject;
      Shift : TShiftState; X, Y: Integer);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  SimulationPartA;

procedure TFrame24.ControlMouseMove(
  Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
const
  minWidth  = 20;
  minHeight = 20;
var
  newPos: TPoint;
  frmPoint : TPoint;
begin
  if inReposition then
  begin
    with TWinControl(Sender) do
    begin
      GetCursorPos(newPos);
      if ssShift in Shift then
      begin //resize
        Screen.Cursor := crSizeNWSE;
        frmPoint := ScreenToClient(Mouse.CursorPos);

        if frmPoint.X > minWidth then
        Width := frmPoint.X;

        if frmPoint.Y > minHeight then
        Height := frmPoint.Y;
      end else //move
      begin
        Screen.Cursor := crSize;
        Left := Left - oldPos.X + newPos.X;
        Top := Top - oldPos.Y + newPos.Y;
        oldPos := newPos;
      end;
    end;
  end;
end;

procedure TFrame24.ControlMouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState; X, Y: Integer);
begin
  if (Sender is TPaintWire) then
  begin
    inReposition := true;
    SetCapture(GetDC((Sender as TPaintWire).Canvas.Handle));
    GetCursorPos(oldPos);
  end;
end;

procedure TFrame24.ControlMouseUp(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState; X, Y: Integer);
begin
  if inReposition then
  begin
    Screen.Cursor := crDefault;
    ReleaseCapture;
    inReposition := false;
  end;
end;

procedure TFrame24.ScrollBox1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source is TPanel) then Accept := true;
end;

procedure TFrame24.ScrollBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  line1: TPaintWire;
begin
  if (Source is TPaintWire) then
  begin
    line1 := TPaintWire.Create(ScrollBox1);
    line1.Parent := ScrollBox1;
    line1.Width  := 100;
    line1.Height := 20;
    line1.Top := Y;
    line1.Left := X;

    line1.OnMouseDown := ControlMouseDown;
    line1.OnMouseMove := ControlMouseMove;
    line1.OnMouseUp   := ControlMouseUp;

    line1.Visible := true;
    line1.Enabled := true;
  end;
end;

end.
