object Frame19: TFrame19
  Left = 0
  Top = 0
  Width = 664
  Height = 240
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 664
    Height = 240
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'Editor View 1'
      object Splitter1: TSplitter
        Left = 0
        Top = 157
        Width = 656
        Height = 7
        Cursor = crVSplit
        Align = alBottom
        Color = clSilver
        ParentColor = False
      end
      object SynEdit1: TSynEdit
        Left = 0
        Top = 0
        Width = 656
        Height = 157
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        PopupMenu = JvPopupMenu1
        TabOrder = 0
        OnKeyDown = SynEdit1KeyDown
        BookMarkOptions.LeftMargin = 0
        BookMarkOptions.XOffset = 5
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -16
        Gutter.Font.Name = 'Consolas'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Gutter.ShowModification = True
        Gutter.Width = 49
        Lines.UnicodeStrings = 'SynEdit1'
        WantTabs = True
        FontSmoothing = fsmNone
      end
      object Panel1: TPanel
        Left = 0
        Top = 164
        Width = 656
        Height = 44
        Align = alBottom
        TabOrder = 1
        object JvImgBtn1: TJvImgBtn
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Cut'
          TabOrder = 0
          OnClick = JvImgBtn1Click
          OnKeyDown = JvImgBtn1KeyDown
          Color = clSilver
        end
        object CopyButton: TJvImgBtn
          Left = 96
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Copy'
          TabOrder = 1
          OnClick = CopyButtonClick
          OnKeyDown = CopyButtonKeyDown
          Color = clSilver
        end
        object PasteButton: TJvImgBtn
          Left = 184
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Paste'
          TabOrder = 2
          OnClick = PasteButtonClick
          OnKeyDown = PasteButtonKeyDown
          Color = clSilver
        end
        object JvImgBtn4: TJvImgBtn
          Left = 272
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 3
          OnClick = JvImgBtn4Click
          OnKeyDown = JvImgBtn4KeyDown
          Color = clSilver
        end
        object SaveButton: TJvImgBtn
          Left = 544
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Save'
          TabOrder = 4
          OnClick = SaveButtonClick
          OnKeyDown = SaveButtonKeyDown
          Color = clSilver
        end
        object OpenButton: TJvImgBtn
          Left = 456
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Open'
          TabOrder = 5
          OnClick = OpenButtonClick
          OnKeyDown = OpenButtonKeyDown
          Color = clSilver
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Program *.prg|*.prg|Form *.wfm|*.wfm|Menu *.mnu|*.mnu|SQL-Query ' +
      '*.sql|*.sql'
    Left = 176
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Left = 216
    Top = 40
  end
  object JvPopupMenu1: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 249
    Top = 40
    object Run1: TMenuItem
      Caption = 'Run'
      ShortCut = 113
      OnClick = Run1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Cut1: TMenuItem
      Caption = 'Cut ...'
      OnClick = Cut1Click
    end
    object Copy1: TMenuItem
      Caption = 'Copy'
      ShortCut = 16451
      OnClick = Copy1Click
    end
    object Paste1: TMenuItem
      Caption = 'Paste'
      ShortCut = 16470
      OnClick = Paste1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SelectAll1: TMenuItem
      Caption = 'Select All'
      ShortCut = 16449
      OnClick = SelectAll1Click
    end
  end
end
