unit HelpAuthorFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, JvRichEdit, SynEdit,
  OleCtrls, SHDocVw, ExtCtrls, ComCtrls, JvExControls, JvRuler;

type
  TFrame11 = class(TFrame)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Splitter1: TSplitter;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ScrollBox1: TScrollBox;
    WebBrowser1: TWebBrowser;
    SynEdit1: TSynEdit;
    JvImgBtn1: TJvImgBtn;
    RichEdit1: TRichEdit;
    JvRuler1: TJvRuler;
    procedure JvImgBtn1Click(Sender: TObject);
    procedure RichEdit1SelectionChange(Sender: TObject);
  private
  public
    FontBold: Boolean;
    FontItalic: Boolean;
    FontUnderline: Boolean;
    FontStrikeOut: Boolean;
    FontColor    : TColor;

    function CurrText: TTextAttributes;
  end;

implementation

{$R *.dfm}
uses
  EditorForm;

procedure TFrame11.JvImgBtn1Click(Sender: TObject);
begin
  Visible := false;

  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontFace .Visible := false;

  Form1.EditPanel .Visible := true;
  Form1.LogPanel  .Visible := true;
  Form1.ModeButton.Visible := true;

  Form1.DFrameHelpTopic.Visible := false;
  Form1.LeftPageControl.Visible := true;

  Form1.MainPageControl.ActivePageIndex := 0;
  Form1.DFrameEdit.Visible := true;
  Form1.SynEdit1.SetFocus;
end;

function TFrame11.CurrText: TTextAttributes;
begin
  if RichEdit1.SelLength > 0 then
  begin
  showmessage('xcxx');
    Result := RichEdit1.SelAttributes;
  end else begin
    Result := RichEdit1.DefAttributes;
  end;
end;

procedure TFrame11.RichEdit1SelectionChange(Sender: TObject);
begin
  FontBold      := fsBold      in RichEdit1.SelAttributes.Style;
  FontItalic    := fsItalic    in RichEdit1.SelAttributes.Style;
  FontUnderLine := fsUnderLine in RichEdit1.SelAttributes.Style;
  FontStrikeOut := fsStrikeOut in RichEdit1.SelAttributes.Style;

  if FontColor = clYellow then
  FontColor := clWhite else
  FontColor := clYellow;
end;

end.
