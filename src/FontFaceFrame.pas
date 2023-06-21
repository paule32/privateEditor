unit FontFaceFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Menus, JvMenus, ImgList, StdCtrls, JvExStdCtrls, JvCombobox,
  JvColorCombo, JvExControls, JvArrowButton, ExtCtrls;

type
  TFrame14 = class(TFrame)
    Panel1: TPanel;
    JvArrowButton1: TJvArrowButton;
    Label3: TLabel;
    ImageList1: TImageList;
    TextStylePopupMenu: TJvPopupMenu;
    MenuItem1: TMenuItem;
    FontColor1: TMenuItem;
    FontStyle1: TMenuItem;
    N1: TMenuItem;
    Background1: TMenuItem;
    JvFontComboBox1: TJvFontComboBox;
    procedure FontColor1Click(Sender: TObject);
    procedure FontStyle1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses
  EditorForm;

procedure TFrame14.FontColor1Click(Sender: TObject);
begin
  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontFace.Visible := false;
  Form1.DFrameFontColor.Visible := true;
  JvArrowButton1.Caption := 'Font Color';
end;

procedure TFrame14.FontStyle1Click(Sender: TObject);
begin
  Form1.DFrameFontFace.Visible := false;
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontStyle.Visible := true;
  JvArrowButton1.Caption := 'Font Style';
end;

procedure TFrame14.MenuItem1Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontFace .Visible := true;
  JvArrowButton1.Caption := 'Font Face';
end;

end.
