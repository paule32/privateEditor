unit TeamServerFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, JvEdit, ExtCtrls;

type
  TFrame2 = class(TFrame)
    Project_Panel: TPanel;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    JvEdit1: TJvEdit;
    JvEdit2: TJvEdit;
    JvEdit3: TJvEdit;
    JvEdit4: TJvEdit;
    JvImgBtn1: TJvImgBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
