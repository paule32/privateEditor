object ErrorBox: TErrorBox
  Left = 209
  Top = 477
  BorderStyle = bsDialog
  Caption = 'Error:'
  ClientHeight = 170
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 115
  TextHeight = 16
  object JvGradient1: TJvGradient
    Left = 0
    Top = 0
    Width = 386
    Height = 170
    Style = grVertical
    StartColor = clRed
    EndColor = clYellow
  end
  object JvScrollBox1: TJvScrollBox
    Left = 24
    Top = 16
    Width = 335
    Height = 97
    Color = clYellow
    ParentColor = False
    TabOrder = 0
    object Memo1: TMemo
      Left = 8
      Top = 8
      Width = 313
      Height = 76
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object JvImgBtn1: TJvImgBtn
    Left = 24
    Top = 128
    Width = 75
    Height = 25
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = JvImgBtn1Click
    Color = clLime
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -13
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvImgBtn2: TJvImgBtn
    Left = 288
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = JvImgBtn2Click
    Color = clLime
  end
  object JvGradientCaption1: TJvGradientCaption
    Active = False
    Captions = <>
    DefaultFont = False
    FormCaption = 'Error:'
    FontInactiveColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GradientInactive = True
    StartColor = clRed
    EndColor = clYellow
    Left = 161
    Top = 128
  end
end
