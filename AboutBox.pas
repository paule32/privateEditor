unit AboutBox;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, JvGradientCaption;

type
  TOKRightDlg = class(TForm)
    OKBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    JvGradientCaption1: TJvGradientCaption;
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKRightDlg: TOKRightDlg;

implementation

{$R *.dfm}

procedure TOKRightDlg.FormShow(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
end;

procedure TOKRightDlg.OKBtnClick(Sender: TObject);
begin
  Close;
end;

end.
