object Form2: TForm2
  Left = 470
  Top = 707
  Width = 383
  Height = 281
  Caption = 'Select Database ...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Consolas'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 115
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 217
    Caption = ' Select DataBase: '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 117
      Height = 19
      Caption = 'Available DB:'
    end
    object ListBox1: TListBox
      Left = 16
      Top = 56
      Width = 137
      Height = 137
      ItemHeight = 19
      Items.Strings = (
        'Borland BDE'
        'InterBase'
        'MySQL')
      TabOrder = 0
    end
    object Button1: TButton
      Left = 176
      Top = 56
      Width = 153
      Height = 25
      Caption = 'Start / Setup'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 176
      Top = 160
      Width = 153
      Height = 25
      Caption = 'Close App.'
      TabOrder = 2
    end
  end
end
