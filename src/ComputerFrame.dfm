object Frame16: TFrame16
  Left = 0
  Top = 0
  Width = 259
  Height = 416
  TabOrder = 0
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 259
    Height = 416
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 0
      Top = 125
      Width = 255
      Height = 7
      Cursor = crVSplit
      Align = alTop
      Color = clSilver
      ParentColor = False
    end
    object Splitter2: TSplitter
      Left = 0
      Top = 330
      Width = 255
      Height = 0
      Cursor = crVSplit
      Align = alTop
      Color = clSilver
      ParentColor = False
    end
    object Splitter3: TSplitter
      Left = 0
      Top = 325
      Width = 255
      Height = 5
      Cursor = crVSplit
      Align = alTop
      Color = clSilver
      ParentColor = False
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 255
      Height = 125
      Align = alTop
      Caption = ' Programming Language: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object JvCheckBox1: TJvRadioButton
        Left = 8
        Top = 24
        Width = 201
        Height = 26
        Alignment = taLeftJustify
        Caption = 'Pascal'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        AutoSize = False
        LinkedControls = <>
      end
      object JvCheckBox2: TJvRadioButton
        Left = 8
        Top = 56
        Width = 201
        Height = 26
        Alignment = taLeftJustify
        Caption = 'BASIC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        AutoSize = False
        LinkedControls = <>
      end
      object JvCheckBox3: TJvRadioButton
        Left = 8
        Top = 88
        Width = 201
        Height = 26
        Alignment = taLeftJustify
        Caption = 'dBASE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        AutoSize = False
        LinkedControls = <>
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 132
      Width = 255
      Height = 193
      Align = alTop
      Caption = ' Operating System: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object JvCheckBox4: TJvCheckBox
        Left = 8
        Top = 24
        Width = 201
        Height = 26
        Caption = 'All Systems'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LinkedControls = <>
        AutoSize = False
      end
      object JvCheckBox5: TJvRadioButton
        Left = 8
        Top = 56
        Width = 201
        Height = 26
        Alignment = taLeftJustify
        Caption = 'Windows'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        AutoSize = False
        LinkedControls = <>
      end
      object JvCheckBox6: TJvRadioButton
        Left = 8
        Top = 88
        Width = 201
        Height = 26
        Alignment = taLeftJustify
        Caption = 'MS - DOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        AutoSize = False
        LinkedControls = <>
      end
      object JvCheckBox7: TJvRadioButton
        Left = 8
        Top = 120
        Width = 193
        Height = 26
        Alignment = taLeftJustify
        Caption = 'Linux'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = True
        AutoSize = False
        LinkedControls = <>
      end
      object JvCheckBox8: TJvRadioButton
        Left = 8
        Top = 152
        Width = 193
        Height = 26
        Alignment = taLeftJustify
        Caption = 'Amiga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        AutoSize = False
        LinkedControls = <>
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 330
      Width = 255
      Height = 82
      Align = alClient
      Caption = ' Compiler:'
      TabOrder = 2
      object RadioButton1: TRadioButton
        Left = 8
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Extern FPC'
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 48
        Width = 113
        Height = 17
        Caption = 'Internal'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RadioButton3: TRadioButton
        Left = 112
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Extern GCC'
        TabOrder = 2
      end
    end
  end
end
