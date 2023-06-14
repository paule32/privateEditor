unit DesignerFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvDesignSurface, JvComponentBase,
  JvInspector, JvDesignUtils, ComCtrls, JvCtrls, JvButton;

type
  TFrame1 = class(TFrame)
    JvInspectorBorlandPainter1: TJvInspectorBorlandPainter;
    JvDesignSurface1: TJvDesignSurface;
    JvDesignScrollBox1: TJvDesignScrollBox;
    JvDesignPanel1: TJvDesignPanel;
    procedure JvDesignPanel1Paint(Sender: TObject);
    procedure JvDesignPanel1Enter(Sender: TObject);
    procedure JvDesignPanel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDesignPanel1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure JvDesignPanel1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
  private
    procedure ButtonOnClick(Sender: TObject);
  public
    count: Integer;
    Button : TJvImgBtn;
  end;

implementation

uses EditorForm,   JvDesignImp;

{$R *.dfm}

procedure TFrame1.ButtonOnClick(Sender: TObject);
var
  i : Integer;
begin
  if (Sender is TJvImgBtn) then
  begin
    for i := 0 to Form1.JvInspector1.VisibleCount - 1 do
    begin
      if Form1.JvInspector1.VisibleItems[i].DisplayName = 'Color' then
      begin
        Form1.JvInspector1.VisibleItems[i].SetDisplayValue(
        ColorToString((Sender as TJvImgBtn).Color));
      end;
    end;
  end;
end;

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

procedure TFrame1.JvDesignPanel1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  Button := TJvImgBtn.Create(JvDesignPanel1);
  Button.Parent := JvDesignPanel1;
  Button.Left   := X;
  Button.Top    := Y;
  Button.Width  := 100;
  Button.Height := 42;
  Button.Caption := 'Button' + IntToStr(count);
  Button.Name    := 'Button' + IntToStr(count);
  count := count + 1;

  Button.OnMouseEnter := ButtonOnClick;
  Button.Show;
end;

procedure TFrame1.JvDesignPanel1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TListView);
end;

end.
