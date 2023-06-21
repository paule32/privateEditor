object Frame11: TFrame11
  Left = 0
  Top = 0
  Width = 675
  Height = 427
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Consolas'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 383
    Width = 675
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 675
    Height = 383
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'File 1'
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 667
        Height = 349
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        TabPosition = tpBottom
        object TabSheet2: TTabSheet
          Caption = 'Source'
          object SynEdit1: TSynEdit
            Left = 0
            Top = 0
            Width = 659
            Height = 317
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
        end
        object TabSheet3: TTabSheet
          Caption = 'Preview'
          ImageIndex = 1
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 659
            Height = 317
            Align = alClient
            TabOrder = 0
            object WebBrowser1: TWebBrowser
              Left = 0
              Top = 0
              Width = 655
              Height = 313
              Align = alClient
              TabOrder = 0
              ControlData = {
                4C00000083380000011B00000000000000000000000000000000000000000000
                000000004C000000000000000000000001000000E0D057007335CF11AE690800
                2B2E126208000000000000004C0000000114020000000000C000000000000046
                8000000000000000000000000000000000000000000000000000000000000000
                00000000000000000100000000000000000000000000000000000000}
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Design'
          ImageIndex = 2
          object JvRuler1: TJvRuler
            Left = 0
            Top = 0
            Width = 659
            Align = alTop
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
          end
          object RichEdit1: TRichEdit
            Left = 0
            Top = 25
            Width = 659
            Height = 292
            Align = alClient
            Lines.Strings = (
              'RichEdit1')
            TabOrder = 0
            OnSelectionChange = RichEdit1SelectionChange
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 386
    Width = 675
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
    object JvImgBtn1: TJvImgBtn
      Left = 8
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Switch'
      TabOrder = 0
      OnClick = JvImgBtn1Click
      Color = clSilver
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Consolas'
      HotTrackFont.Style = []
    end
  end
end
