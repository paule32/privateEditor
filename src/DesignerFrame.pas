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
  I : Integer;
  procedure setVisible(V: Integer);
  var
    I: Integer;
  begin
    for I := 0 to 2048 - 1 do
       Form1.JvInspectors[I].Visible := false;

    if Form1.JvInspectors[V].VisibleCount < 1 then
       Form1.JvInspectors[V].AddComponent(
             (Sender as TJvImgBtn),
             (Sender as TJvImgBtn).Name,
             true);
       Form1.JvInspectors[V].Visible := true;
  end;
begin
  if (Sender is TJvImgBtn) then
  begin
    if (Sender as TJvImgBtn).Name = 'Button1' then
    begin
      setVisible(0);
    end else
    if (Sender as TJvImgBtn).Name = 'Button2' then
    begin
      setVisible(1);
    end;
  end;
end;

procedure TFrame1.JvDesignPanel1Paint(Sender: TObject);
begin
  with JvDesignPanel1 do
  DesignPaintGrid(Canvas, ClientRect, Color);
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
