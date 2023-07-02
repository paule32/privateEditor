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
        TabOrder = 0
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
          Color = clSilver
        end
        object JvImgBtn2: TJvImgBtn
          Left = 96
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Copy'
          TabOrder = 1
          Color = clSilver
        end
        object JvImgBtn3: TJvImgBtn
          Left = 184
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Paste'
          TabOrder = 2
          Color = clSilver
        end
        object JvImgBtn4: TJvImgBtn
          Left = 272
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 3
          Color = clSilver
        end
        object JvImgBtn5: TJvImgBtn
          Left = 544
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Save'
          TabOrder = 4
          Color = clSilver
        end
      end
    end
  end
end
