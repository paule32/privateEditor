unit FoldersLocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ImgList, StdCtrls, JvExStdCtrls, JvListBox, JvDriveCtrls,
  ExtCtrls, ComCtrls;

type
  TFrame9 = class(TFrame)
    UserHomeFolder: TTreeView;
    Splitter1: TSplitter;
    JvDriveList1: TJvDriveList;
    ImageList1: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
