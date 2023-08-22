// ----------------------------------------------
// THIS FILE IS CREATED AUTOMATICALLY
// (c) 2023 ResBuilder v1.0
// by paule32 - Jens Kallup - non-profit Software
// ----------------------------------------------
unit ResourceFiles;
interface
uses
  Windows, Classes, SysUtils, Dialogs,
  JvComponentBase, JvZlibMultiple,
  //
  RF_1, RF_2, RF_3, RF_4, RF_5, RF_6, RF_7,
  RF_8, RF_9, RF_10, RF_11, RF_12, RF_13, RF_14,
  RF_15, RF_16, RF_17, RF_18, RF_19, RF_20,
  RF_21, RF_22, RF_23, RF_24, RF_25, RF_26,
  RF_27, RF_28, RF_29, RF_30, RF_31, RF_32,
  RF_33, RF_34, RF_35, RF_36, RF_37, RF_38,
  RF_39, RF_40, RF_41, RF_42, RF_43, RF_44,
  RF_45, RF_46, RF_47, RF_48, RF_49, RF_50,
  RF_51, RF_52, RF_53, RF_54, RF_55, RF_56,
  RF_57, RF_58, RF_59, RF_60, RF_61, RF_62,
  RF_63, RF_64, RF_65, RF_66, RF_67, RF_68,
  RF_69, RF_70, RF_71, RF_72, RF_73, RF_74,
  RF_75, RF_76, RF_77, RF_78, RF_79, RF_80,
  RF_81, RF_82, RF_83, RF_84, RF_85, RF_86,
  RF_87, RF_88, RF_89, RF_90, RF_91, RF_92,
  RF_93, RF_94, RF_95, RF_96, RF_97, RF_98,
  RF_99, RF_100, RF_101, RF_102, RF_103, RF_104,
  RF_105;

type
  PointerByte = ^Byte;
type
  IRF_Package = interface(IInterface)
    ['{19790208-2023-0802-0002-CAFEBABE0002}']
    function DeCompressBuffer(arr: PointerByte; len: Integer): Boolean;
    function DeCompressAll: Boolean;
  end;

type
  TRF_Package = class(TInterfacedObject, IRF_Package)
  public
    function DeCompressBuffer(arr: PointerByte; len: Integer): Boolean;
    function DeCompressAll: Boolean; overload;

    constructor Create; overload;
    destructor Destroy; override;
  end;

implementation

type
  TRF_CONST = record
    name: String;
    arrptr: PointerByte;
    len: Integer;
  end;

var
  global_RF_CONST : Array[1..105] of TRF_CONST = (
    (name: 'TComboBox'; arrptr: @TByteArray_TComboBox; len: 1),
    (name: 'TEdit'; arrptr: @TByteArray_TComboBox; len: 1),
    (name: 'TImage'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'amiga'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'auge'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'basic'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'bold'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'boldNormal'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'btn_close'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'button'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'c64'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'c642'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'c64datadrive'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'c64floppy'; arrptr: @TByteArray_TComboBox; len: ),
    (name: 'c64key1'; arrptr: @TByteArray_c64key1; len: ),
    (name: 'c64key2'; arrptr: @TByteArray_c64key2; len: ),
    (name: 'c64key3'; arrptr: @TByteArray_c64key3; len: ),
    (name: 'c64key4'; arrptr: @TByteArray_c64key4; len: ),
    (name: 'c64key5'; arrptr: @TByteArray_c64key5; len: ),
    (name: 'c64key6'; arrptr: @TByteArray_c64key6; len: ),
    (name: 'c64key7'; arrptr: @TByteArray_c64key7; len: ),
    (name: 'c64key8'; arrptr: @TByteArray_c64key8; len: ),
    (name: 'c64key9'; arrptr: @TByteArray_c64key9; len: ),
    (name: 'c64key10'; arrptr: @TByteArray_c64key10; len: ),
    (name: 'c64key11'; arrptr: @TByteArray_c64key11; len: ),
    (name: 'c64key12'; arrptr: @TByteArray_c64key12; len: ),
    (name: 'c64key13'; arrptr: @TByteArray_c64key13; len: ),
    (name: 'c64key14'; arrptr: @TByteArray_c64key14; len: ),
    (name: 'c64key15'; arrptr: @TByteArray_c64key15; len: ),
    (name: 'c64key16'; arrptr: @TByteArray_c64key16; len: ),
    (name: 'c64key17'; arrptr: @TByteArray_c64key17; len: ),
    (name: 'c64key18'; arrptr: @TByteArray_c64key18; len: ),
    (name: 'c64key19'; arrptr: @TByteArray_c64key19; len: ),
    (name: 'c64key20'; arrptr: @TByteArray_c64key20; len: ),
    (name: 'c64key21'; arrptr: @TByteArray_c64key21; len: ),
    (name: 'c64key22'; arrptr: @TByteArray_c64key22; len: ),
    (name: 'c64key23'; arrptr: @TByteArray_c64key23; len: ),
    (name: 'c64key24'; arrptr: @TByteArray_c64key24; len: ),
    (name: 'c64key25'; arrptr: @TByteArray_c64key25; len: ),
    (name: 'c64key26'; arrptr: @TByteArray_c64key26; len: ),
    (name: 'c64key27'; arrptr: @TByteArray_c64key27; len: ),
    (name: 'c64key28'; arrptr: @TByteArray_c64key28; len: ),
    (name: 'c64key29'; arrptr: @TByteArray_c64key29; len: ),
    (name: 'c64key30'; arrptr: @TByteArray_c64key30; len: ),
    (name: 'c64key31'; arrptr: @TByteArray_c64key31; len: ),
    (name: 'c64key32'; arrptr: @TByteArray_c64key32; len: ),
    (name: 'c64key33'; arrptr: @TByteArray_c64key33; len: ),
    (name: 'c64key34'; arrptr: @TByteArray_c64key34; len: ),
    (name: 'c64key35'; arrptr: @TByteArray_c64key35; len: ),
    (name: 'c64key36'; arrptr: @TByteArray_c64key36; len: ),
    (name: 'c64key37'; arrptr: @TByteArray_c64key37; len: ),
    (name: 'c64key38'; arrptr: @TByteArray_c64key38; len: ),
    (name: 'c64key39'; arrptr: @TByteArray_c64key39; len: ),
    (name: 'c64key40'; arrptr: @TByteArray_c64key40; len: ),
//  (name: 'c64key41'; arrptr: @TByteArray_c64key41; len: ),
    (name: 'c64key42'; arrptr: @TByteArray_c64key42; len: ),
    (name: 'c64key43'; arrptr: @TByteArray_c64key43; len: ),
    (name: 'c64key44'; arrptr: @TByteArray_c64key44; len: ),
    (name: 'c64key45'; arrptr: @TByteArray_c64key45; len: ),
    (name: 'c64key46'; arrptr: @TByteArray_c64key46; len: ),
    (name: 'c64key47'; arrptr: @TByteArray_c64key47; len: ),
    (name: 'c64key48'; arrptr: @TByteArray_c64key48; len: ),
    (name: 'c64key49'; arrptr: @TByteArray_c64key49; len: ),
    (name: 'c64key50'; arrptr: @TByteArray_c64key50; len: ),
    (name: 'c64key51'; arrptr: @TByteArray_c64key51; len: ),
    (name: 'c64key52'; arrptr: @TByteArray_c64key52; len: ),
    (name: 'c64key53'; arrptr: @TByteArray_c64key53; len: ),
    (name: 'c64key54'; arrptr: @TByteArray_c64key54; len: ),
    (name: 'c64key55'; arrptr: @TByteArray_c64key55; len: ),
    (name: 'c64key56'; arrptr: @TByteArray_c64key56; len: ),
    (name: 'c64key57'; arrptr: @TByteArray_c64key57; len: ),
    (name: 'c64key58'; arrptr: @TByteArray_c64key58; len: ),
    (name: 'c64key59'; arrptr: @TByteArray_c64key59; len: ),
    (name: 'c64key60'; arrptr: @TByteArray_c64key60; len: ),

    (name: 'clip'; arrptr: @TByteArray_clip; len: ),
    (name: 'datasette'; arrptr: @TByteArray_datasette; len: ),
    (name: 'dbase'; arrptr: @TByteArray_dbase; len: ),
    (name: 'deu'; arrptr: @TByteArray_deu; len: ),
    (name: 'dosi'; arrptr: @TByteArray_dosi; len: ),
    (name: 'edit'; arrptr: @TByteArray_edit; len: ),
    (name: 'editfolder'; arrptr: @TByteArray_editfolder; len: ),
    (name: 'file'; arrptr: @TByteArray_file; len: ),
    (name: 'floppydisk'; arrptr: @TByteArray_floppydisk; len: ),
    (name: 'folder'; arrptr: @TByteArray_folder; len: ),
    (name: 'font'; arrptr: @TByteArray_font; len: ),
    (name: 'frage'; arrptr: @TByteArray_frage; len: ),
    (name: 'greenfolder'; arrptr: @TByteArray_greenfolder; len: ),
    (name: 'keyboard'; arrptr: @TByteArray_keyboard; len: ),
    (name: 'left'; arrptr: @TByteArray_left; len: ),
    (name: 'linux'; arrptr: @TByteArray_linux; len: ),
    (name: 'msdos'; arrptr: @TByteArray_msdos; len: ),
    (name: 'new'; arrptr: @TByteArray_new; len: ),
    (name: 'newdat'; arrptr: @TByteArray_newdat; len: ),
    (name: 'pascal'; arrptr: @TByteArray_pascal; len: ),
    (name: 'right'; arrptr: @TByteArray_right; len: ),
    (name: 'run'; arrptr: @TByteArray_run; len: ),
    (name: 'setup'; arrptr: @TByteArray_setup; len: ),
    (name: 'texti1'; arrptr: @TByteArray_texti1; len: ),
    (name: 'underline'; arrptr: @TByteArray_underline; len: ),
    (name: 'underline2'; arrptr: @TByteArray_underline2; len: ),
    (name: 'usa'; arrptr: @TByteArray_usa; len: ),
    (name: 'user'; arrptr: @TByteArray_user; len: ),
    (name: 'win16'; arrptr: @TByteArray_win16; len: ),
    (name: 'win32'; arrptr: @TByteArray_win32; len: ),
    (name: 'windows'; arrptr: @TByteArray_windows; len: ),
    (name: 'winxp'; arrptr: @TByteArray_winxp; len: )
  );
var
  z: TJvZLibMultiple;

constructor TRF_Package.Create;
begin
  inherited Create;
  try
    if not(DirectoryExists('temp')) then
    CreateDir('temp');
    z := TJvZLibMultiple.Create(nil);
  except
    on E: Exception do
    begin
      ShowMessage('Exception:' +
      #10 + E.ClassName        +
      #10 + E.Message);
    end;
  end;
end;

destructor TRF_Package.Destroy;
begin
  z.Free;
  inherited Destroy;
end;

function TRF_Package.DeCompressBuffer(arr: PointerByte; len: Integer): Boolean;
var
  MS: TMemoryStream;
  I: Integer;
  B: Byte;
begin
  MS := TMemoryStream.Create;
  try
    try
      for I := 0 to len - 1 do
      begin
        B := arr^;
        MS.Write(B,1);
        inc(arr);
      end;
      MS.SaveToFile('temp\test.bin');
      z.DecompressFile('temp\test.bin','temp',true);
    except
      on E: Exception do
      begin
        ShowMessage('Exception:' +
        #10 + E.ClassName        +
        #10 + E.Message);
      end;
    end;
  finally
    MS.Clear;
    MS.Free;
  end;
  result := true;
end;

function TRF_Package.DeCompressAll: Boolean;
var
  LB: TStringList;
begin
  LB := TStringList.Create;
  try
    LB.AddObject('TComboBox', @TByteArray_TComboBox);
  //  DeCompressBuffer
  finally
    LB.Clear;
    LB.Free;
  end;
  result := true;
end;

end.
