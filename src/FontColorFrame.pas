unit FontColorFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, JvFullColorSpaces, StdCtrls, JvExStdCtrls, JvCombobox,
  JvFullColorCtrls, Menus, JvMenus, ImgList, JvExControls, JvArrowButton,
  ExtCtrls, JvColorCombo;

type
  TFrame13 = class(TFrame)
    Panel1: TPanel;
    JvArrowButton3: TJvArrowButton;
    ImageList1: TImageList;
    TextStylePopupMenu: TJvPopupMenu;
    MenuItem1: TMenuItem;
    FontColor1: TMenuItem;
    FontStyle1: TMenuItem;
    JvColorComboBox1: TJvColorComboBox;
    JvColorComboBox2: TJvColorComboBox;
    Label1: TLabel;
    Label2: TLabel;
    JvColorComboBox3: TJvColorComboBox;
    Label3: TLabel;
    N1: TMenuItem;
    Background1: TMenuItem;
    procedure MenuItem1Click(Sender: TObject);
    procedure FontColor1Click(Sender: TObject);
    procedure FontStyle1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses EditorForm;

{$R *.dfm}

procedure TFrame13.MenuItem1Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontFace.Visible := true;
  JvArrowButton3.Caption := 'Font Face';

end;

procedure TFrame13.FontColor1Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := true;
  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontFace.Visible  := false;
  JvArrowButton3.Caption := 'Font Color';
end;

procedure TFrame13.FontStyle1Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontStyle.Visible := true;
  Form1.DFrameFontFace.Visible  := false;
  JvArrowButton3.Caption := 'Font Style';
end;

end.
