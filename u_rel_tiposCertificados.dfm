object f_rel_tiposCertificados: Tf_rel_tiposCertificados
  Left = 0
  Top = 0
  Caption = 'f_rel_tiposCertificados'
  ClientHeight = 770
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = ds_dados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 35
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 2
        Width = 712
        Height = 29
        AutoSize = False
        Caption = 'Tipos De Certificados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 33
        Width = 718
        Height = 4
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 73
      Width = 718
      Height = 26
      BandType = btColumnHeader
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      object RLLabel2: TRLLabel
        Left = 3
        Top = 6
        Width = 70
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 96
        Top = 6
        Width = 332
        Height = 16
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 446
        Top = 6
        Width = 75
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Val. Meses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 559
        Top = 6
        Width = 82
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 99
      Width = 718
      Height = 25
      object RLDBText1: TRLDBText
        Left = 3
        Top = 6
        Width = 70
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'cod_tipo'
        DataSource = ds_dados
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 96
        Top = 6
        Width = 332
        Height = 16
        AutoSize = False
        DataField = 'tipo'
        DataSource = ds_dados
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 446
        Top = 6
        Width = 75
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'validade'
        DataSource = ds_dados
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 559
        Top = 6
        Width = 82
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'valor'
        DataSource = ds_dados
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 124
      Width = 718
      Height = 29
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 6
        Width = 134
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 3
        Top = 3
        Width = 712
        Height = 4
        DrawKind = dkLine
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'C:\Users\joao\Desktop\tipos.pdf'
    DisplayName = 'Documento PDF'
    Left = 120
    Top = 232
  end
  object q_tipos: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from tipos')
    Left = 48
    Top = 304
    object q_tiposcod_tipo: TFDAutoIncField
      FieldName = 'cod_tipo'
      Origin = 'cod_tipo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object q_tipostipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 50
    end
    object q_tiposvalidade: TStringField
      FieldName = 'validade'
      Origin = 'validade'
      FixedChar = True
      Size = 2
    end
    object q_tiposdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object q_tiposvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = 'R$: ###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object ds_dados: TDataSource
    DataSet = q_tipos
    Left = 120
    Top = 304
  end
  object RLXLSXFilter1: TRLXLSXFilter
    Options = [xfoOneSheetPerPage]
    FileName = 'C:\Users\joao\Desktop\tipos.xlsx'
    DisplayName = 'Planilha Excel'
    Left = 48
    Top = 232
  end
end
