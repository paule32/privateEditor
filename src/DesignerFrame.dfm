object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 481
  Height = 295
  TabOrder = 0
  object JvDesignScrollBox1: TJvDesignScrollBox
    Left = 0
    Top = 0
    Width = 481
    Height = 295
    Align = alClient
    TabOrder = 0
    object JvDesignPanel1: TJvDesignPanel
      Left = 0
      Top = 0
      Width = 477
      Height = 291
      Align = alClient
      Caption = 'JvDesignPanel1'
      TabOrder = 0
      OnEnter = JvDesignPanel1Enter
      OnPaint = JvDesignPanel1Paint
      object Button1: TButton
        Left = 24
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object JvInspectorBorlandPainter1: TJvInspectorBorlandPainter
    CategoryFont.Charset = DEFAULT_CHARSET
    CategoryFont.Color = clBtnText
    CategoryFont.Height = -13
    CategoryFont.Name = 'MS Sans Serif'
    CategoryFont.Style = []
    NameFont.Charset = DEFAULT_CHARSET
    NameFont.Color = clWindowText
    NameFont.Height = -13
    NameFont.Name = 'MS Sans Serif'
    NameFont.Style = []
    ValueFont.Charset = DEFAULT_CHARSET
    ValueFont.Color = clNavy
    ValueFont.Height = -13
    ValueFont.Name = 'MS Sans Serif'
    ValueFont.Style = []
    DrawNameEndEllipsis = False
    Left = 61
    Top = 31
  end
  object JvDesignSurface1: TJvDesignSurface
    Left = 90
    Top = 27
  end
end
