object Frame5: TFrame5
  Left = 0
  Top = 0
  Width = 278
  Height = 496
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Consolas'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 278
    Height = 19
    Align = alTop
    AutoSize = False
    Caption = 'KeyBoard:'
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 97
    Width = 278
    Height = 7
    Cursor = crVSplit
    Align = alTop
    Color = clSilver
    ParentColor = False
  end
  object Label2: TLabel
    Left = 0
    Top = 104
    Width = 278
    Height = 19
    Align = alTop
    AutoSize = False
    Caption = 'Mapping:'
  end
  object ListBox1: TCheckListBox
    Left = 0
    Top = 19
    Width = 278
    Height = 78
    OnClickCheck = ListBox1ClickCheck
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Consolas'
    Font.Style = []
    ItemHeight = 22
    Items.Strings = (
      'ENG - English'
      'DEU - German')
    ParentFont = False
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object ValueListEditor1: TValueListEditor
    Left = 0
    Top = 123
    Width = 278
    Height = 174
    Align = alTop
    TabOrder = 1
    ColWidths = (
      81
      191)
  end
end