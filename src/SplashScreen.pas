// -------------------------------------------------------------------
// File:    SplashScreen.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit SplashScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, LMDPNGImage, JvGradientCaption;

type
  TSplashForm = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    JvGradientCaption1: TJvGradientCaption;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    isinit: Boolean;
    isExit: Boolean;
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}
uses
  EditorForm;

procedure TSplashForm.FormShow(Sender: TObject);
begin
  if isExit = false then
  begin
    Timer1.Enabled := true;

    Width := Width + 1;
    Width := Width - 1;
  end;
end;

procedure TSplashForm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  Application.CreateForm(TForm1, Form1);
  Form1.Show;
  Hide;
end;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
  isinit := true;
  isExit := false;
end;

end.
