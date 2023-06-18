unit C64KeyBoard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, ImgList;

type
  TFrame4 = class(TFrame)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    Image53: TImage;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image60: TImage;
    Image61: TImage;
    Image62: TImage;
    Image63: TImage;
    Image64: TImage;
    Image65: TImage;
    Image66: TImage;
    Image67: TImage;
    ImageList1: TImageList;
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses
  EditorForm;

procedure TFrame4.Image2Click(Sender: TObject);
begin
  ShowMessage('onclick: ' + IntToStr((Sender as TImage).Tag));
end;

procedure TFrame4.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  icon: TIcon;
begin
  icon := TIcon.Create;
  try
    Form1.C64KeyImage.Left := (Sender as TImage).Left + X + 20;
    Form1.C64KeyImage.Top  := (Sender as TImage).Top  + Y + 25;

    ImageList1.GetIcon((Sender as TImage).Tag,icon);
    DrawIconEx(Form1.C64KeyImage.Canvas.Handle,0,0,icon.Handle,
               Form1.C64KeyImage.Width,
               Form1.C64KeyImage.Height,0,0,DI_NORMAL);

    Form1.C64KeyImage.Visible := true;
  finally
    icon.Free;
  end;
end;

procedure TFrame4.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Form1.C64KeyImage.Visible := false;
end;

end.
