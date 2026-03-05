object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 431
  ClientWidth = 212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 30
    Width = 53
    Height = 15
    Caption = 'N'#250'mero 1'
  end
  object Label2: TLabel
    Left = 24
    Top = 91
    Width = 53
    Height = 15
    Caption = 'N'#250'mero 2'
  end
  object Label3: TLabel
    Left = 24
    Top = 216
    Width = 52
    Height = 15
    Caption = 'Resultado'
  end
  object txtnum1: TEdit
    Left = 24
    Top = 51
    Width = 161
    Height = 23
    TabOrder = 0
    OnChange = txtnum1Change
  end
  object txtNum2: TEdit
    Left = 23
    Top = 112
    Width = 161
    Height = 23
    TabOrder = 1
    OnChange = txtnum1Change
  end
  object btSomar: TButton
    Left = 24
    Top = 168
    Width = 41
    Height = 25
    Caption = '+'
    Enabled = False
    TabOrder = 2
    OnClick = btSomarClick
  end
  object btSubtrair: TButton
    Left = 71
    Top = 168
    Width = 34
    Height = 25
    Caption = '-'
    Enabled = False
    TabOrder = 3
    OnClick = btSubtrairClick
  end
  object btMultiplicar: TButton
    Left = 111
    Top = 168
    Width = 34
    Height = 25
    Caption = '*'
    Enabled = False
    TabOrder = 4
    OnClick = btMultiplicarClick
  end
  object btDividir: TButton
    Left = 151
    Top = 168
    Width = 34
    Height = 25
    Caption = '/'
    Enabled = False
    TabOrder = 5
    OnClick = btDividirClick
  end
  object txtResultado: TEdit
    Left = 24
    Top = 237
    Width = 160
    Height = 23
    Enabled = False
    TabOrder = 6
  end
  object opcVisual: TRadioGroup
    Left = 23
    Top = 288
    Width = 162
    Height = 121
    Caption = 'Alterar visual'
    ItemIndex = 0
    Items.Strings = (
      'Windows Classic'
      'Glow'
      'Aqua Light State')
    TabOrder = 7
    OnClick = opcVisualClick
  end
end
