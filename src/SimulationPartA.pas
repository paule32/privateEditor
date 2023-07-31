unit SimulationPartA;

interface

uses
  Windows, Classes, Graphics, ExtCtrls;

type
  TPaintWire = class(TPaintBox)
  private
    FToolSetLabel: String;
  protected
    procedure Paint; override;
  public
    constructor Create(AComponent: TComponent); override;
  property
    ToolSetLabel: String read FToolSetLabel write FToolSetLabel;
  end;

implementation

constructor TPaintWire.Create(AComponent: TComponent);
begin
  inherited Create(AComponent);
  FToolSetLabel := '';
  Height := 20;
end;

procedure TPaintWire.Paint;
var
  x,y,Radius: Integer;
begin
  inherited Paint;

  Canvas.Pen.Color := clBlack;
  Canvas.Pen.Width := 2;

  Canvas.MoveTo(1    ,Height div 2);
  Canvas.LineTo(Width,Height div 2);

  // left knubbel port
  Radius := 5;
  x := Trunc(                  5  + Radius * Cos(5));
  y := Trunc(((Height div 2) + 5) + Radius * Sin(5));

  Canvas.Brush.Color := clRed;
  Canvas.Pen.Width := 1;
  Canvas.Ellipse(
    x - Radius, y - Radius,
    x + Radius, y + Radius
  );

  // right knubbel port
  Radius := 5;
  x := Trunc( (Width   -  5)      + Radius * Cos(5));
  y := Trunc(((Height div 2) + 5) + Radius * Sin(5));

  Canvas.Brush.Color := clRed;
  Canvas.Pen.Width := 1;
  Canvas.Ellipse(
    x - Radius, y - Radius,
    x + Radius, y + Radius
  );

  // working tool set
  if Length(ToolSetLabel) > 0 then
  begin
    Canvas.Brush.Style := bsClear;
    Canvas.Font.Size   := 11;
    Canvas.Font.Name   := 'Consolas';
    Canvas.TextOut(2,Height - (Canvas.Font.Size + 5),FToolSetLabel);
  end;
end;

end.
