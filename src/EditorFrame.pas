// -------------------------------------------------------------------
// File:    EditorFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit EditorFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, ExtCtrls, SynEdit,
  ComCtrls, Menus, JvMenus, JvExComCtrls;

type
  TFrame19 = class(TFrame)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    SynEdit1: TSynEdit;
    Panel1: TPanel;
    JvImgBtn1: TJvImgBtn;
    CopyButton: TJvImgBtn;
    PasteButton: TJvImgBtn;
    JvImgBtn4: TJvImgBtn;
    SaveButton: TJvImgBtn;
    SaveDialog1: TSaveDialog;
    OpenButton: TJvImgBtn;
    OpenDialog1: TOpenDialog;
    JvPopupMenu1: TJvPopupMenu;
    Run1: TMenuItem;
    N1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N2: TMenuItem;
    SelectAll1: TMenuItem;
    procedure JvImgBtn1Click(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure JvImgBtn4Click(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure OpenButtonClick(Sender: TObject);
    procedure JvImgBtn1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CopyButtonKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PasteButtonKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvImgBtn4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpenButtonKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SaveButtonKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SynEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Run1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  EditorForm;

procedure TFrame19.JvImgBtn1Click(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
  SynEdit1.ClearSelection;
end;

procedure TFrame19.CopyButtonClick(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
end;

procedure TFrame19.PasteButtonClick(Sender: TObject);
begin
  SynEdit1.PasteFromClipboard;
end;

procedure TFrame19.JvImgBtn4Click(Sender: TObject);
begin
  SynEdit1.ClearSelection;
end;

procedure TFrame19.SaveButtonClick(Sender: TObject);
begin
  if SynEdit1.Modified then
  begin
    if not(SaveDialog1.Execute) then
    begin
      ShowMessage('Error during save source file occur.');
      exit;
    end else
    begin
      SynEdit1.Lines.SaveToFile(SaveDialog1.FileName);
    end;
  end;
end;

procedure TFrame19.OpenButtonClick(Sender: TObject);
begin
  SaveButtonClick(Sender);
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('Error during open source file occur.');
    exit;
  end else
  begin
    SynEdit1.Lines.Clear;
    SynEdit1.Lines.LoadFromFile(OpenDialog1.FileName)
  end;
end;

procedure TFrame19.JvImgBtn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.CopyButtonKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.PasteButtonKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.JvImgBtn4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.OpenButtonKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.SaveButtonKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.SynEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
    exit;
  end else
  if key = VK_F2 then
  begin
  showmessage('xxxxx');
    Form1.StartCompileClick(Sender);
    exit;
  end;

  if ssCtrl in Shift then
  begin
    if key = Ord('O') then begin OpenButtonClick(Sender);  exit; end else
    if key = Ord('S') then begin SaveButtonClick(Sender);  exit; end else
    if key = Ord('C') then begin CopyButtonClick(Sender);  exit; end else
    if key = Ord('A') then begin SynEdit1.SelectAll;       exit; end else
    if key = Ord('R') then begin SynEdit1.Redo;            exit; end else
    if key = Ord('U') then begin SynEdit1.Undo;            exit; end else
    if key = Ord('V') then begin PasteButtonClick(Sender); exit; end
  end;
end;

procedure TFrame19.Run1Click(Sender: TObject);
var
  shift: TShiftState;
  key: Word;
begin
  key := VK_F2;
  SynEdit1KeyDown(Sender,key,shift);
end;

procedure TFrame19.Cut1Click(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
  SynEdit1.ClearSelection;
end;

procedure TFrame19.Copy1Click(Sender: TObject);
begin
  SynEdit1.ClearSelection;
end;

procedure TFrame19.Paste1Click(Sender: TObject);
begin
  SynEdit1.PasteFromClipboard;
end;

procedure TFrame19.Delete1Click(Sender: TObject);
begin
  SynEdit1.ClearSelection;
end;

procedure TFrame19.SelectAll1Click(Sender: TObject);
begin
  SynEdit1.SelectAll;
end;

end.

