object Frame25: TFrame25
  Left = 0
  Top = 0
  Width = 229
  Height = 396
  TabOrder = 0
  OnResize = FrameResize
  object Splitter1: TSplitter
    Left = 0
    Top = 236
    Width = 229
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 239
    Width = 229
    Height = 157
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object ValueListEditor1: TValueListEditor
      Left = 1
      Top = 1
      Width = 227
      Height = 155
      Align = alClient
      TabOrder = 0
      ColWidths = (
        109
        112)
    end
  end
  object JvPageControl1: TJvPageControl
    Left = 0
    Top = 0
    Width = 229
    Height = 236
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    ParentColor = False
    Color = clBtnFace
    object TabSheet1: TTabSheet
      Caption = 'Wire'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 221
        Height = 205
        Align = alClient
        TabOrder = 0
      end
    end
  end
end
