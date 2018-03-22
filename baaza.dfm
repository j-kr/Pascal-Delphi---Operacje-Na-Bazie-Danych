object Form1: TForm1
  Left = 230
  Top = 98
  Width = 998
  Height = 662
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 985
    Height = 625
    ActivePage = TabSheet5
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Strona Domowa'
      object Label9: TLabel
        Left = 864
        Top = 456
        Width = 57
        Height = 13
        Caption = 'Numer pola:'
      end
      object Label8: TLabel
        Left = 864
        Top = 344
        Width = 64
        Height = 13
        Caption = 'Ile rekord'#243'w?'
      end
      object Label7: TLabel
        Left = 864
        Top = 240
        Width = 58
        Height = 13
        Caption = 'Uszkodzony'
      end
      object Label4: TLabel
        Left = 864
        Top = 80
        Width = 107
        Height = 13
        Caption = 'Rozdzielczosc aparatu'
      end
      object Label5: TLabel
        Left = 864
        Top = 200
        Width = 66
        Height = 13
        Caption = 'Numer seryjny'
      end
      object Label6: TLabel
        Left = 864
        Top = 160
        Width = 53
        Height = 13
        Caption = 'Ilosc rdzeni'
      end
      object Label1: TLabel
        Left = 864
        Top = 120
        Width = 69
        Height = 13
        Caption = 'Data produkcji'
      end
      object Label2: TLabel
        Left = 864
        Top = 0
        Width = 30
        Height = 13
        Caption = 'Marka'
      end
      object Label3: TLabel
        Left = 864
        Top = 40
        Width = 29
        Height = 13
        Caption = 'Model'
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 857
        Height = 569
        ColCount = 8
        RowCount = 50000
        TabOrder = 0
        ColWidths = (
          64
          87
          85
          108
          101
          138
          153
          160)
      end
      object Edit1: TEdit
        Left = 864
        Top = 56
        Width = 105
        Height = 21
        MaxLength = 10
        TabOrder = 1
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 864
        Top = 16
        Width = 105
        Height = 21
        MaxLength = 10
        TabOrder = 2
        OnKeyPress = Edit2KeyPress
      end
      object Edit3: TEdit
        Left = 864
        Top = 136
        Width = 105
        Height = 21
        MaxLength = 4
        TabOrder = 3
        OnKeyPress = Edit3KeyPress
      end
      object Edit4: TEdit
        Left = 864
        Top = 96
        Width = 105
        Height = 21
        MaxLength = 4
        TabOrder = 4
        OnKeyPress = Edit4KeyPress
      end
      object Edit5: TEdit
        Left = 864
        Top = 216
        Width = 105
        Height = 21
        MaxLength = 17
        TabOrder = 5
        OnKeyPress = Edit5KeyPress
      end
      object Edit6: TEdit
        Left = 864
        Top = 360
        Width = 105
        Height = 21
        MaxLength = 3
        TabOrder = 6
        OnKeyPress = Edit6KeyPress
      end
      object Edit7: TEdit
        Left = 864
        Top = 472
        Width = 105
        Height = 21
        MaxLength = 3
        TabOrder = 7
        OnKeyPress = Edit7KeyPress
      end
      object BitBtn1: TBitBtn
        Left = 864
        Top = 280
        Width = 105
        Height = 33
        Caption = 'Dodaj'
        TabOrder = 8
        OnClick = BitBtn1Click
      end
      object BitBtn3: TBitBtn
        Left = 864
        Top = 384
        Width = 105
        Height = 33
        Caption = 'Losuj'
        TabOrder = 9
        OnClick = BitBtn3Click
      end
      object BitBtn2: TBitBtn
        Left = 864
        Top = 496
        Width = 105
        Height = 33
        Caption = 'Usun'
        TabOrder = 10
        OnClick = BitBtn2Click
      end
      object Button1: TButton
        Left = 256
        Top = 572
        Width = 257
        Height = 33
        Caption = 'Odczyt'
        TabOrder = 11
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 864
        Top = 536
        Width = 105
        Height = 33
        Caption = 'Usun wszystko'
        TabOrder = 12
        OnClick = Button3Click
      end
      object Button2: TButton
        Left = 976
        Top = 0
        Width = 17
        Height = 297
        Caption = '1'
        TabOrder = 13
        OnClick = Button2Click
      end
      object Button4: TButton
        Left = 520
        Top = 572
        Width = 473
        Height = 33
        Caption = 'Ile rekordow?'
        TabOrder = 14
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 0
        Top = 572
        Width = 249
        Height = 33
        Caption = 'Zapis'
        TabOrder = 15
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 976
        Top = 300
        Width = 17
        Height = 269
        Caption = '2'
        TabOrder = 16
        OnClick = Button6Click
      end
      object CheckBox1: TCheckBox
        Left = 864
        Top = 256
        Width = 105
        Height = 17
        TabOrder = 17
      end
      object ComboBox1: TComboBox
        Left = 864
        Top = 176
        Width = 105
        Height = 21
        ItemHeight = 13
        MaxLength = 1
        TabOrder = 18
        OnKeyPress = ComboBox1KeyPress
        Items.Strings = (
          '1'
          '2'
          '4'
          '6'
          '8')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Wyszukiwanie Liniowe'
      ImageIndex = 1
      object Label16: TLabel
        Left = 864
        Top = 112
        Width = 58
        Height = 13
        Caption = 'Uszkodzony'
      end
      object Label10: TLabel
        Left = 864
        Top = 8
        Width = 69
        Height = 13
        Caption = 'Co wyszukac?'
      end
      object Label11: TLabel
        Left = 864
        Top = 64
        Width = 40
        Height = 13
        Caption = 'Wartosc'
      end
      object Label12: TLabel
        Left = 896
        Top = 560
        Width = 3
        Height = 13
      end
      object Label13: TLabel
        Left = 864
        Top = 560
        Width = 26
        Height = 13
        Caption = 'Czas:'
      end
      object CheckBox2: TCheckBox
        Left = 864
        Top = 128
        Width = 105
        Height = 17
        TabOrder = 0
      end
      object StringGrid2: TStringGrid
        Left = 0
        Top = 0
        Width = 857
        Height = 593
        ColCount = 8
        RowCount = 50000
        TabOrder = 1
        ColWidths = (
          64
          87
          85
          108
          101
          138
          153
          160)
      end
      object Button7: TButton
        Left = 864
        Top = 152
        Width = 105
        Height = 33
        Caption = 'Wyszukaj'
        TabOrder = 2
        OnClick = Button7Click
      end
      object ComboBoxCoWyszukac: TComboBox
        Left = 864
        Top = 32
        Width = 97
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Items.Strings = (
          'ID'
          'Marka'
          'Model'
          'Rozdzielczosc aparatu'
          'Data produkcji'
          'Ilosc rdzeni'
          'Numer seryjny'
          'Uszkodzony')
      end
      object Edit13: TEdit
        Left = 864
        Top = 80
        Width = 97
        Height = 21
        TabOrder = 4
      end
      object Button8: TButton
        Left = 864
        Top = 192
        Width = 105
        Height = 33
        Caption = 'Wyszukaj Pierwszy'
        TabOrder = 5
        OnClick = Button8Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Wyszukiwanie Binarne'
      ImageIndex = 2
      object Label15: TLabel
        Left = 864
        Top = 8
        Width = 69
        Height = 13
        Caption = 'Co wyszukac?'
      end
      object Label17: TLabel
        Left = 864
        Top = 64
        Width = 40
        Height = 13
        Caption = 'Wartosc'
      end
      object Label14: TLabel
        Left = 864
        Top = 560
        Width = 26
        Height = 13
        Caption = 'Czas:'
      end
      object Label18: TLabel
        Left = 896
        Top = 560
        Width = 3
        Height = 13
      end
      object Button9: TButton
        Left = 864
        Top = 120
        Width = 105
        Height = 33
        Caption = 'Wyszukaj'
        TabOrder = 0
        OnClick = Button9Click
      end
      object Edit8: TEdit
        Left = 864
        Top = 80
        Width = 97
        Height = 21
        TabOrder = 1
      end
      object ComboBox2: TComboBox
        Left = 864
        Top = 32
        Width = 97
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        Items.Strings = (
          'ID'
          'Marka'
          'Model'
          'Rdzenie'
          'Rok produkcji'
          'Rozdzielczosc'
          'Numer seryjny'
          'Uszkodzony')
      end
      object StringGrid3: TStringGrid
        Left = 0
        Top = 0
        Width = 857
        Height = 593
        ColCount = 8
        RowCount = 50000
        TabOrder = 3
        ColWidths = (
          64
          87
          85
          108
          101
          138
          153
          160)
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Wyszukiwanie '#321'a'#324'cuchowe'
      ImageIndex = 3
      object Label19: TLabel
        Left = 864
        Top = 8
        Width = 69
        Height = 13
        Caption = 'Co wyszukac?'
      end
      object Label20: TLabel
        Left = 864
        Top = 64
        Width = 40
        Height = 13
        Caption = 'Wartosc'
      end
      object Label21: TLabel
        Left = 896
        Top = 560
        Width = 3
        Height = 13
      end
      object Label22: TLabel
        Left = 864
        Top = 560
        Width = 26
        Height = 13
        Caption = 'Czas:'
      end
      object StringGrid4: TStringGrid
        Left = 0
        Top = 0
        Width = 857
        Height = 593
        ColCount = 8
        RowCount = 50000
        TabOrder = 0
        ColWidths = (
          64
          87
          85
          108
          101
          138
          153
          160)
      end
      object ComboBox3: TComboBox
        Left = 864
        Top = 32
        Width = 97
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          'ID'
          'Marka'
          'Model'
          'Rdzenie'
          'Rok produkcji'
          'Rozdzielczosc'
          'Numer seryjny'
          'Uszkodzony')
      end
      object Edit9: TEdit
        Left = 864
        Top = 80
        Width = 97
        Height = 21
        TabOrder = 2
      end
      object Button10: TButton
        Left = 864
        Top = 120
        Width = 105
        Height = 33
        Caption = 'Wyszukaj'
        TabOrder = 3
        OnClick = Button10Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Wyszukiwanie Inwersyjne'
      ImageIndex = 4
      object Label23: TLabel
        Left = 864
        Top = 8
        Width = 69
        Height = 13
        Caption = 'Co wyszukac?'
      end
      object Label24: TLabel
        Left = 864
        Top = 64
        Width = 40
        Height = 13
        Caption = 'Wartosc'
      end
      object Label25: TLabel
        Left = 864
        Top = 560
        Width = 26
        Height = 13
        Caption = 'Czas:'
      end
      object Label26: TLabel
        Left = 896
        Top = 560
        Width = 3
        Height = 13
      end
      object StringGrid5: TStringGrid
        Left = 0
        Top = 0
        Width = 857
        Height = 593
        ColCount = 8
        RowCount = 50000
        TabOrder = 0
        ColWidths = (
          64
          87
          85
          108
          101
          138
          153
          160)
      end
      object ComboBox4: TComboBox
        Left = 864
        Top = 32
        Width = 97
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          'Marka'
          'Model'
          'Rdzenie'
          'Rok produkcji'
          'Rozdzielczosc'
          'Numer seryjny'
          'Uszkodzony')
      end
      object Edit10: TEdit
        Left = 864
        Top = 80
        Width = 97
        Height = 21
        TabOrder = 2
      end
      object Button11: TButton
        Left = 864
        Top = 120
        Width = 105
        Height = 33
        Caption = 'Wyszukaj'
        TabOrder = 3
        OnClick = Button11Click
      end
    end
  end
end
