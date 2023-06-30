unit C64ConfigFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, CheckLst, ExtCtrls, Grids, ValEdit, ImgList,
  JvExStdCtrls, JvListBox, TntStdCtrls;

type
  TFrame5 = class(TFrame)
    Label1: TLabel;
    Splitter1: TSplitter;
    Label2: TLabel;
    ListBox1: TCheckListBox;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter2: TSplitter;
    ValueListEditor1: TValueListEditor;
    ImageList1: TImageList;
    JvListBox1: TJvListBox;
    ListBox2: TTntListBox;
    procedure ListBox1ClickCheck(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2MeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure ListBox2DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
    MemBitmap: TBitmap;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame5.ListBox1ClickCheck(Sender: TObject);
var
  I,C: Integer;
begin
  C := ListBox1.ItemIndex;

  for I := 0 to ListBox1.Count - 1 do
  ListBox1.Checked[I] := false;
  ListBox1.Checked[C] := true;
end;

procedure TFrame5.ListBox1Click(Sender: TObject);
begin
  ListBox1ClickCheck(Sender);
end;

procedure TFrame5.ListBox2MeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
begin
  Height := ImageList1.Height + 4;
end;

procedure TFrame5.ListBox2DrawItem(
  Control: TWinControl;
  Index  : Integer;
  Rect   : TRect;
  State  : TOwnerDrawState);
  var
  I : integer;
  lb: TtntListBox;
  b1,b2: Byte;
  wc: WideChar;
begin
  lb := (Control as TtntListBox);

  if MemBitmap = nil then
  begin
     MemBitmap := TBitmap.Create;
     MemBitmap.Width  := 27;
     MemBitmap.Height := 27;
  end;

  MemBitmap.Canvas.Brush.Color := clYellow;
  MemBitmap.Canvas.Font.Name   := 'C64 Elite Mono';
  MemBitmap.Canvas.Font.Color  := clBlack;
  MemBitmap.Canvas.Font.Size   := 12;

  rect.Left   := rect.Left +  2;
  rect.Right  := rect.Left + 32;

  wc := $E000;
  b1 := WordRec(wc).Hi;
  
  for I := 0 to 10 do
  begin
    wc := $E000 + I;
    MemBitmap.Canvas.FillRect(rect);
    MemBitmap.Canvas.TextOut(
      rect.Left,
      rect.Top,
      '?');
    BitBlt(
	  lb.Canvas.Handle,
	  Rect.Left   -  1,
	  Rect.Top    -  1,
	  Rect.Right  - Rect.Left + 2,
	  Rect.Bottom - Rect.Top  + 2, MemBitmap.Canvas.Handle,
	  Rect.Left   -  1,
	  Rect.Top    -  1, SRCCOPY);

(*
    Windows.TextOutW(
    lb.Canvas.Handle,
    rect.Left,
    rect.Top , ws, Length(ws));*)
  end;
end;

end.
