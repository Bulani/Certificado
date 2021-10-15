object f_config: Tf_config
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o'
  ClientHeight = 145
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 24
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object edit_server: TEdit
    Left = 40
    Top = 64
    Width = 385
    Height = 21
    TabOrder = 0
  end
  object b_salvar: TBitBtn
    Left = 472
    Top = 62
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = b_salvarClick
  end
end
