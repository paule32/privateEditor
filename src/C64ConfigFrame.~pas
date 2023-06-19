unit C64ConfigFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, CheckLst, ExtCtrls, Grids, ValEdit;

type
  TFrame5 = class(TFrame)
    Label1: TLabel;
    Splitter1: TSplitter;
    Label2: TLabel;
    ListBox1: TCheckListBox;
    ValueListEditor1: TValueListEditor;
    procedure ListBox1ClickCheck(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
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

end.
