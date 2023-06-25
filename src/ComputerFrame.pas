unit ComputerFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, ImgList, ComCtrls, JvExComCtrls, JvComCtrls, StdCtrls,
  JvExStdCtrls, JvCheckBox, JvRadioButton;

type
  TFrame16 = class(TFrame)
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    GroupBox1: TGroupBox;
    JvCheckBox1: TJvRadioButton;
    JvCheckBox2: TJvRadioButton;
    JvCheckBox3: TJvRadioButton;
    GroupBox2: TGroupBox;
    JvCheckBox4: TJvCheckBox;
    JvCheckBox5: TJvRadioButton;
    JvCheckBox6: TJvRadioButton;
    JvCheckBox7: TJvRadioButton;
    JvCheckBox8: TJvRadioButton;
    GroupBox3: TGroupBox;
    Splitter3: TSplitter;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
