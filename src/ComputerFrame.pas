unit ComputerFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, ImgList, ComCtrls, JvExComCtrls, JvComCtrls, StdCtrls,
  JvExStdCtrls, JvCheckBox;

type
  TFrame16 = class(TFrame)
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    GroupBox1: TGroupBox;
    JvCheckBox1: TJvCheckBox;
    JvCheckBox2: TJvCheckBox;
    JvCheckBox3: TJvCheckBox;
    GroupBox2: TGroupBox;
    JvCheckBox4: TJvCheckBox;
    JvCheckBox5: TJvCheckBox;
    JvCheckBox6: TJvCheckBox;
    JvCheckBox7: TJvCheckBox;
    JvCheckBox8: TJvCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
