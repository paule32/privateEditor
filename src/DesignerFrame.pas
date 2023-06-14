unit DesignerFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvDesignSurface, JvComponentBase,
  JvInspector, JvDesignUtils;

type
  TFrame1 = class(TFrame)
    JvInspectorBorlandPainter1: TJvInspectorBorlandPainter;
    JvDesignSurface1: TJvDesignSurface;
    JvDesignScrollBox1: TJvDesignScrollBox;
    JvDesignPanel1: TJvDesignPanel;
    Button1: TButton;
    procedure JvDesignPanel1Paint(Sender: TObject);
    procedure JvDesignPanel1Enter(Sender: TObject);
    procedure JvDesignPanel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses EditorForm,   JvDesignImp;

{$R *.dfm}

procedure TFrame1.JvDesignPanel1Paint(Sender: TObject);
begin
  with JvDesignPanel1 do
  DesignPaintGrid(Canvas, ClientRect, Color);
end;

procedure TFrame1.JvDesignPanel1Enter(Sender: TObject);
begin
  JvDesignSurface1.Active := true;

  JvDesignPanel1.Active := true;
  JvDesignPanel1.Invalidate;

  JvDesignPanel1.Color := clBtnFace;
  JvDesignPanel1.DrawRules := false;
  JvDesignPanel1.OnPaint := JvDesignPanel1Paint;
end;

procedure TFrame1.JvDesignPanel1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  JvDesignPanel1.Invalidate;
end;

end.
