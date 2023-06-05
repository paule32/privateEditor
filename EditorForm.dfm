object Form1: TForm1
  Left = 578
  Top = 498
  Width = 685
  Height = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 115
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 284
    Width = 667
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Splitter2: TSplitter
    Left = 185
    Top = 84
    Height = 200
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 667
    Height = 74
    Bands = <
      item
        Control = Panel1
        ImageIndex = -1
        MinHeight = 32
        Width = 663
      end
      item
        Control = Panel2
        HorizontalOnly = True
        ImageIndex = -1
        MinHeight = 32
        Width = 663
      end>
    FixedSize = True
    object Panel1: TPanel
      Left = 9
      Top = 0
      Width = 650
      Height = 32
      Align = alClient
      AutoSize = True
      TabOrder = 0
      object MenuBarButton_File: TCtrlMenuBarButton
        Left = 1
        Top = 1
        Width = 56
        Height = 30
        Align = alLeft
        Caption = 'File '
        DropDownMenu = PopupMenu_File
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        HotTrack = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clBlack
        HotTrackFont.Height = -16
        HotTrackFont.Name = 'Consolas'
        HotTrackFont.Style = []
        HotTrackOptions.Enabled = True
        HotTrackOptions.Color = clSilver
        HotTrackOptions.FrameVisible = True
        MarkDropDown = False
        ParentFont = False
        Transparent = True
      end
      object MenuBarButton_Edit: TCtrlMenuBarButton
        Left = 57
        Top = 1
        Width = 56
        Height = 30
        Align = alLeft
        Caption = 'Edit'
        DropDownMenu = PopupMenu_Edit
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        HotTrack = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clBlack
        HotTrackFont.Height = -16
        HotTrackFont.Name = 'Consolas'
        HotTrackFont.Style = []
        HotTrackOptions.Enabled = True
        HotTrackOptions.Color = clSilver
        HotTrackOptions.FrameVisible = True
        MarkDropDown = False
        ParentFont = False
        Transparent = True
      end
      object MenuBarButton_Tools: TCtrlMenuBarButton
        Left = 113
        Top = 1
        Width = 64
        Height = 30
        Align = alLeft
        Caption = 'Tools'
        DropDownMenu = PopupMenu_Tools
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        HotTrack = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clBlack
        HotTrackFont.Height = -16
        HotTrackFont.Name = 'Consolas'
        HotTrackFont.Style = []
        HotTrackOptions.Enabled = True
        HotTrackOptions.Color = clSilver
        HotTrackOptions.FrameVisible = True
        MarkDropDown = False
        ParentFont = False
        Transparent = True
      end
      object MenuBarButton_Help: TCtrlMenuBarButton
        Left = 177
        Top = 1
        Width = 56
        Height = 30
        Align = alLeft
        Caption = 'Help'
        DropDownMenu = PopupMenu_Help
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        HotTrack = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clBlack
        HotTrackFont.Height = -16
        HotTrackFont.Name = 'Consolas'
        HotTrackFont.Style = []
        HotTrackOptions.Enabled = True
        HotTrackOptions.Color = clSilver
        HotTrackOptions.FrameVisible = True
        MarkDropDown = False
        ParentFont = False
        Transparent = True
      end
    end
    object Panel2: TPanel
      Left = 9
      Top = 34
      Width = 650
      Height = 32
      TabOrder = 1
      object JvSpeedButton3: TJvSpeedButton
        Left = 1
        Top = 1
        Width = 40
        Height = 30
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 33023
        HotTrackFont.Height = -16
        HotTrackFont.Name = 'Consolas'
        HotTrackFont.Style = []
        HotTrackOptions.Enabled = True
        HotTrackOptions.FrameVisible = True
        ParentFont = False
      end
      object ModeButton: TJvSpeedButton
        Left = 504
        Top = 1
        Width = 145
        Height = 30
        Align = alRight
        Caption = 'Mode: Pascal'
        DropDownMenu = PopupMenu_Mode
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        HotTrack = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clBlack
        HotTrackFont.Height = -16
        HotTrackFont.Name = 'Consolas'
        HotTrackFont.Style = []
        HotTrackOptions.Enabled = True
        HotTrackOptions.Color = clSilver
        HotTrackOptions.FrameVisible = True
        MarkDropDown = False
        ParentFont = False
        Transparent = True
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 328
    Width = 667
    Height = 27
    Panels = <>
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 74
    Width = 667
    Height = 10
    Align = alTop
    Position = 20
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 287
    Width = 667
    Height = 41
    Align = alBottom
    Caption = 'Panel3'
    TabOrder = 3
  end
  object Panel4: TPanel
    Left = 0
    Top = 84
    Width = 185
    Height = 200
    Align = alLeft
    Caption = 'Panel4'
    TabOrder = 4
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 183
      Height = 198
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Folder'#39's'
        object TreeView1: TTreeView
          Left = 0
          Top = 0
          Width = 175
          Height = 167
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Consolas'
          Font.Style = []
          Indent = 21
          ParentFont = False
          TabOrder = 0
          Items.Data = {
            02000000220000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
            09446F63756D656E7473200000000000000000000000FFFFFFFFFFFFFFFF0000
            000000000000074465736B746F70}
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'TabSheet3'
        ImageIndex = 1
      end
    end
  end
  object Panel5: TPanel
    Left = 188
    Top = 84
    Width = 479
    Height = 200
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 5
    object PageControl2: TPageControl
      Left = 1
      Top = 1
      Width = 477
      Height = 198
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        object Panel6: TPanel
          Left = 0
          Top = 136
          Width = 469
          Height = 31
          Align = alBottom
          Caption = 'Panel6'
          TabOrder = 0
        end
        object SynEdit1: TSynEdit
          Left = 0
          Top = 0
          Width = 469
          Height = 136
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Consolas'
          Font.Style = []
          TabOrder = 1
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -16
          Gutter.Font.Name = 'Consolas'
          Gutter.Font.Style = []
          Gutter.ShowLineNumbers = True
          Gutter.ShowModification = True
          Gutter.Width = 49
          Highlighter = SynPasSyn1
          Lines.UnicodeStrings = 'SynEdit1'
          WantTabs = True
          FontSmoothing = fsmNone
        end
      end
    end
  end
  object JvGradientCaption1: TJvGradientCaption
    Active = False
    Captions = <
      item
        Caption = 'Private Editor 1.0 (c) 2023 paule32'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        InactiveColor = clGradientActiveCaption
      end>
    DefaultFont = False
    FontInactiveColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GradientInactive = True
    StartColor = clRed
    EndColor = clYellow
    Left = 17
    Top = 128
  end
  object SynPasSyn1: TSynPasSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 61
    Top = 128
  end
  object OpenDialog1: TOpenDialog
    Left = 281
    Top = 168
  end
  object SaveDialog1: TSaveDialog
    Left = 313
    Top = 168
  end
  object localesList: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'ENG'
        Strings.Strings = (
          'MenuBarButton_File=File'
          'MenuBarButton_Edit=Edit'
          'MenuBarButton_Tools=Tools'
          'MenuBarButton_Help=Help'
          'PopupMenu_File_New=New ...'
          'PopupMenu_File_New_Application=Application'
          'PopupMenu_File_New_Library=Library'
          'PopupMenu_File_New_Other=Other ...'
          'PopupMenu_File_Open=Open'
          'PopupMenu_File_Save=Save'
          'PopupMenu_File_SaveAs=Save As ...'
          'PopupMenu_File_Exit=Exit'
          'PopupMenu_Edit_Undo=Undo'
          'PopupMenu_Edit_SelAll=Select Alll'
          'PopupMenu_Edit_Cut=Cut'
          'PopupMenu_Edit_Copy=Copy'
          'PopupMenu_Edit_Paste=Paste'
          'PopupMenu_Edit_Delete=Delete'
          'PopupMenu_Tools_Language=Language'
          'PopupMenu_Tools_Language_English=English'
          'PopupMenu_Tools_Language_German=German'
          'PopupMenu_Help_Help=Help'
          'PopupMenu_Help_About=About ...')
      end
      item
        Name = 'DEU'
        Strings.Strings = (
          'MenuBarButton_File=Datei'
          'MenuBarButton_Edit=Bearbeiten'
          'MenuBarButton_Tools=Extras'
          'MenuBarButton_Help=Hilfe'
          'PopupMenu_File_New=Neu ...'
          'PopupMenu_File_New_Application=Anwendung'
          'PopupMenu_File_New_Library=Bibliothek'
          'PopupMenu_File_New_Other=Andere ...'
          'PopupMenu_File_Open='#214'ffnen'
          'PopupMenu_File_Save=Speichern'
          'PopupMenu_File_SaveAs=Speichern unter ...'
          'PopupMenu_File_Exit=Beenden'
          'PopupMenu_Edit_Undo=Wiederherstellen'
          'PopupMenu_Edit_SelAll=Alles makieren'
          'PopupMenu_Edit_Cut=Ausschneiden'
          'PopupMenu_Edit_Copy=Kopieren'
          'PopupMenu_Edit_Paste=Einf'#252'gen'
          'PopupMenu_Edit_Delete=L'#228'schen'
          'PopupMenu_Tools_Language=Sprache'
          'PopupMenu_Tools_Language_English=Englisch'
          'PopupMenu_Tools_Language_German=Deutsch'
          'PopupMenu_Help_Help=Hilfe'
          'PopupMenu_Help_About='#220'ber ...')
      end>
    Left = 281
    Top = 200
  end
  object PopupMenu_File: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 14
    Left = 29
    Top = 184
    object PopupMenu_File_New: TMenuItem
      Caption = 'New ...'
      OnClick = PopupMenu_File_NewClick
      object PopupMenu_File_New_Application: TMenuItem
        Caption = 'Application'
      end
      object PopupMenu_File_New_Library: TMenuItem
        Caption = 'Library'
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object PopupMenu_File_New_Other: TMenuItem
        Caption = 'other ...'
      end
    end
    object PopupMenu_File_Open: TMenuItem
      Caption = 'Open'
      OnClick = PopupMenu_File_OpenClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PopupMenu_File_Save: TMenuItem
      Caption = 'Save'
    end
    object PopupMenu_File_SaveAs: TMenuItem
      Caption = 'Save As ...'
      OnClick = PopupMenu_File_SaveAsClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object PopupMenu_File_Exit: TMenuItem
      Caption = 'Exit'
      OnClick = PopupMenu_File_ExitClick
    end
  end
  object PopupMenu_Edit: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 14
    Left = 61
    Top = 184
    object PopupMenu_Edit_Undo: TMenuItem
      Caption = 'Undo'
      ShortCut = 16474
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object PopupMenu_Edit_SelAll: TMenuItem
      Caption = 'Select All'
      ShortCut = 16449
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object PopupMenu_Edit_Cut: TMenuItem
      Caption = 'Cut'
    end
    object PopupMenu_Edit_Copy: TMenuItem
      Caption = 'Copy'
      ShortCut = 16451
    end
    object PopupMenu_Edit_Paste: TMenuItem
      Caption = 'Paste'
      ShortCut = 16470
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object PopupMenu_Edit_Delete: TMenuItem
      Caption = 'Delete'
      ShortCut = 46
    end
  end
  object PopupMenu_Help: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 14
    Left = 125
    Top = 184
    object PopupMenu_Help_Help: TMenuItem
      Caption = 'Help'
      ShortCut = 112
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object PopupMenu_Help_About: TMenuItem
      Caption = 'About ...'
      OnClick = PopupMenu_Help_AboutClick
    end
  end
  object PopupMenu_Mode: TJvPopupMenu
    MenuAnimation = [maLeftToRight]
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 14
    Left = 29
    Top = 216
    object Pascal1: TMenuItem
      Caption = 'Pascal'
      OnClick = Pascal1Click
    end
    object dBASE1: TMenuItem
      Caption = 'dBASE'
      OnClick = dBASE1Click
    end
  end
  object PopupMenu_Tools: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 14
    Left = 93
    Top = 184
    object PopupMenu_Tools_Language: TMenuItem
      Caption = 'Language'
      object PopupMenu_Tools_Language_English: TMenuItem
        Caption = 'English'
        OnClick = PopupMenu_Tools_Language_EnglishClick
      end
      object PopupMenu_Tools_Language_German: TMenuItem
        Caption = 'German'
        OnClick = PopupMenu_Tools_Language_GermanClick
      end
    end
  end
end
