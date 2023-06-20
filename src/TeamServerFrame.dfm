object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 810
  Height = 191
  TabOrder = 0
  object Project_Panel: TPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 191
    Align = alClient
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 808
      Height = 189
      HorzScrollBar.Style = ssFlat
      VertScrollBar.Style = ssFlat
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 135
        Height = 19
        Caption = 'Server Address:'
      end
      object Label2: TLabel
        Left = 320
        Top = 8
        Width = 45
        Height = 19
        Caption = 'Port:'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 90
        Height = 19
        Caption = 'User name:'
      end
      object Label4: TLabel
        Left = 8
        Top = 112
        Width = 81
        Height = 19
        Caption = 'Password:'
      end
      object Label5: TLabel
        Left = 472
        Top = 8
        Width = 63
        Height = 19
        Caption = 'Server:'
      end
      object JvEdit1: TJvEdit
        Left = 8
        Top = 32
        Width = 289
        Height = 25
        Caret.Width = 4
        Caret.Height = 20
        AutoSize = False
        MaxLength = 255
        TabOrder = 0
        OnEnter = JvEdit1Enter
        OnExit = JvEdit1Exit
        TextHint = 'IP or Hostname'
      end
      object JvEdit2: TJvEdit
        Left = 320
        Top = 32
        Width = 121
        Height = 25
        Caret.Width = 4
        Caret.Height = 20
        AutoSize = False
        MaxLength = 255
        TabOrder = 1
        OnEnter = JvEdit2Enter
        OnExit = JvEdit2Exit
        TextHint = 'Number'
      end
      object JvEdit3: TJvEdit
        Left = 8
        Top = 87
        Width = 289
        Height = 25
        Caret.Width = 4
        Caret.Height = 20
        AutoSize = False
        MaxLength = 255
        TabOrder = 2
        OnEnter = JvEdit3Enter
        OnExit = JvEdit3Exit
        TextHint = 'Your Nickname'
      end
      object JvEdit4: TJvEdit
        Left = 8
        Top = 134
        Width = 289
        Height = 25
        Caret.Width = 4
        Caret.Height = 20
        AutoSize = False
        MaxLength = 255
        TabOrder = 3
        OnEnter = JvEdit4Enter
        OnExit = JvEdit4Exit
        TextHint = 'Your Password'
      end
      object JvImgBtn1: TJvImgBtn
        Left = 318
        Top = 83
        Width = 122
        Height = 25
        Caption = 'Connect'
        TabOrder = 4
        Color = clSilver
      end
      object CheckListBox1: TCheckListBox
        Left = 472
        Top = 32
        Width = 273
        Height = 121
        ItemHeight = 19
        TabOrder = 5
      end
      object CheckBox1: TCheckBox
        Left = 472
        Top = 160
        Width = 273
        Height = 17
        Caption = 'Round Robbin'
        TabOrder = 6
      end
    end
  end
end
