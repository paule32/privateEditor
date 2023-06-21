object Frame15: TFrame15
  Left = 0
  Top = 0
  Width = 310
  Height = 783
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Consolas'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 249
    Width = 310
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 449
    Width = 310
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 701
    Width = 310
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 310
    Height = 249
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Topics'
      object TreeView1: TTreeView
        Left = 0
        Top = 0
        Width = 302
        Height = 215
        Align = alClient
        Indent = 21
        TabOrder = 0
        Items.Data = {
          01000000210000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
          0850726F6A6563743A}
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 452
    Width = 310
    Height = 249
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Keywords'
      object TreeView2: TTreeView
        Left = 0
        Top = 0
        Width = 302
        Height = 215
        Align = alClient
        Indent = 21
        TabOrder = 0
      end
    end
  end
  object PageControl3: TPageControl
    Left = 0
    Top = 252
    Width = 310
    Height = 197
    ActivePage = TabSheet3
    Align = alTop
    TabOrder = 2
    object TabSheet3: TTabSheet
      Caption = 'Items Library'
      object TreeView3: TTreeView
        Left = 0
        Top = 0
        Width = 302
        Height = 163
        Align = alClient
        Indent = 21
        TabOrder = 0
        Items.Data = {
          030000001D0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
          0448544D4C200000000000000000000000FFFFFFFFFFFFFFFF00000000000000
          000750696374757265240000000000000000000000FFFFFFFFFFFFFFFF000000
          00000000000B506C616365686F6C646572}
      end
    end
  end
end
