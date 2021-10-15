object f_FiltroTiposCertificados: Tf_FiltroTiposCertificados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Filtro Tipos Certificados'
  ClientHeight = 167
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 96
    Top = 16
    Width = 93
    Height = 19
    Caption = 'Ordenar por:'
  end
  object btnImprimir: TBitBtn
    Left = 8
    Top = 112
    Width = 123
    Height = 41
    Caption = 'Imprimir'
    Glyph.Data = {
      42090000424D4209000000000000420000002800000018000000180000000100
      20000300000000090000130B0000130B000000000000000000000000FF0000FF
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E68FE8E8E8D7E7E7E7D8E7E7E7D8E7E7E7D8E7E7E7D8E7E7E7D8E7E7E7D8E7E7
      E7D8E7E7E7D8E7E7E7D8E7E7E7A9DDDDDD0F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E4E45EE6E6
      E6FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFE7E7E7FFD8D8D8A40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E4E48DEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFE4E4E4BF0000000000000000000000000000
      00000000000000000000AAAAAA03D1D1D15ECFCFCF809B948BA0ABA59DD8EDED
      EDFFE5E5E5FFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFE2E2E2FFEDEDEDFFC1BEB9E48B8278ACCFCFCF80D0D0D06DD5D5
      D50C0000000000000000C1C1C17FC9C9C9FFCBCBCBFF8B8378FF877D6FFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFA69F96FF716758FFCBCBCBFFC9C9C9FFC1C1
      C1AE0000000000000000CDCDCDB1D0D0D0FFD0D0D0FF8D857AFF887E70FFEDED
      EDFFE6E6E6FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
      E0FFE0E0E0FFE4E4E4FFEDEDEDFFA7A096FF74695AFFD0D0D0FFD0D0D0FFCECE
      CEDF0000000000000000D1D1D1B0D0D0D0FFD0D0D0FFACA8A2FF5A4D3BFF756A
      5CFF756A5CFF756A5CFF756A5CFF756A5CFF756A5CFF756A5CFF756A5CFF756A
      5CFF756A5CFF756A5CFF756A5CFF635644FF938C82FFD0D0D0FFD0D0D0FFD0D0
      D0E00000000000000000D1D1D1B0D0D0D0FFD0D0D0FFD0D0D0FFB1AEA9FF968F
      85FF968F85FF968F85FF968F85FF968F85FF968F85FF968F85FF968F85FF968F
      85FF968F85FF968F85FF968F85FFA8A39CFFCFCFCEFFD0D0D0FFD0D0D0FFD0D0
      D0E00000000000000000D1D1D1B0D0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
      D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
      D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
      D0E00000000000000000D1D1D1B0D0D0D0FFD0D0D0FFD0D0CFFFD2BEAAFFD3BA
      A0FFD3BAA0FFD3BAA0FFD3BAA0FFD3BAA0FFD3BAA0FFD3BAA0FFD3BAA0FFD3BA
      A0FFD3BAA0FFD3BAA0FFD3BAA0FFD2BCA6FFD0CECBFFD0D0D0FFD0D0D0FFD0D0
      D0E00000000000000000D1D1D1B0D0D0D0FFD0D0D0FFD5A879FFD88836FFD888
      36FFD88836FFD88836FFD88836FFD88836FFD88836FFD88836FFD88836FFD888
      36FFD88836FFD88836FFD88836FFD88836FFD69A5CFFD0D0D0FFD0D0D0FFD0D0
      D0E00000000000000000D1D1D1B0D0D0D0FFD0D0D0FFD7924CFFD88836FFD888
      36FFD88836FFD88836FFD88836FFD88836FFD88836FFD88836FFD88836FFA274
      73FF5A5BC6FFD0883EFF99B66FFFBD9B4EFFD88836FFD0CCC9FFD0D0D0FFD0D0
      D0E00000000000000000D1D1D1B0D0D0D0FFD0D0D0FFD79048FFD88836FFD888
      36FFD88836FFD88836FFD88836FFD88836FFD88836FFD88836FFD88836FFBB7E
      57FF876B92FFD68839FFB0A65BFFCA9343FFD88836FFD1CCC6FFD0D0D0FFD0D0
      D0E00000000000000000D1D1D1B0D0D0D0FFD0D0D0FFD79048FFC77E32FFC27B
      33FFC27B33FFC27B33FFC27B33FFC27B33FFC27B33FFC27B33FFC27B33FFC27B
      33FFC27B33FFC27B33FFC27B33FFC37C33FFD78736FFD1CCC6FFD0D0D0FFD0D0
      D0E00000000000000000D4D4D4B3D0D0D0FFD0D0D0FFD79048FFD5A878FFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFDBBC9CFFD78736FFD1CCC6FFD0D0D0FFD3D3
      D3E10000000000000000DDDDDD88D8D8D8FFD6D6D6FFDC9E5FFFE3B78AFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFE6C8A8FFDD974FFFD7D2CDFFD7D7D7FFDDDD
      DDB50000000000000000FFFFFF01D1D1D14ECFCFCF70D4A576A7E0C5A9CDEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFE6D3C2DCD5A26DAFD1CCC674D0D0D05DDBDB
      DB07000000000000000000000000000000000000000000000000ECECEC60EDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDED900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2D2D239B5B5
      B5F9B9B9B9FFDFDFDFFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDED900000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B9B9
      B9629C9C9CFEB2B2B2FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDED900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9B9B962ABABABFBEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEE5B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8C8C84AEDEDED80EDEDED80EDEDED80EDEDED80EDEDED80EDED
      ED80EDEDED80EDEDED80ECECEC52FFFFFF030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    TabOrder = 0
    OnClick = btnImprimirClick
  end
  object btnCancelar: TBitBtn
    Left = 157
    Top = 112
    Width = 123
    Height = 41
    Caption = 'Cancelar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object cbOpcoes: TComboBox
    Left = 64
    Top = 56
    Width = 161
    Height = 27
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = 'C'#243'digo'
    Items.Strings = (
      'C'#243'digo'
      'Tipo'
      'Validade'
      'Valor')
  end
end