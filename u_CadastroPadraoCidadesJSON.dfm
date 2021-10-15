inherited frm_CadastroPadraoCidadesJSON: Tfrm_CadastroPadraoCidadesJSON
  Caption = 'Cadastro de Cidades'
  OnClose = FormClose
  ExplicitWidth = 724
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 19
  inherited PageControl1: TPageControl
    inherited tabConsulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 30
      ExplicitWidth = 700
      ExplicitHeight = 382
      object Label6: TLabel [2]
        Left = 136
        Top = -24
        Width = 42
        Height = 19
        Caption = 'bairro'
      end
      inherited grid_Dados: TDBGrid
        Top = 67
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'cod_cidade'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'localidade'
            Title.Caption = 'Cidade'
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'uf'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'cep'
            Title.Alignment = taCenter
            Title.Caption = 'CEP'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ibge'
            Title.Alignment = taCenter
            Title.Caption = 'Cod. IBGE'
            Width = 100
            Visible = True
          end>
      end
    end
    inherited tabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 30
      ExplicitWidth = 700
      ExplicitHeight = 382
      object Label2: TLabel
        Left = 24
        Top = 6
        Width = 28
        Height = 19
        Caption = 'CEP'
        FocusControl = edit_cep
      end
      object Label10: TLabel
        Left = 24
        Top = 79
        Width = 82
        Height = 19
        Caption = 'Logradouro'
        FocusControl = edit_logradouro
      end
      object Label11: TLabel
        Left = 24
        Top = 152
        Width = 99
        Height = 19
        Caption = 'Complemento'
        FocusControl = edit_complemento
      end
      object Label12: TLabel
        Left = 373
        Top = 78
        Width = 42
        Height = 19
        Caption = 'Bairro'
        FocusControl = edit_bairro
      end
      object Label13: TLabel
        Left = 180
        Top = 6
        Width = 48
        Height = 19
        Caption = 'Cidade'
        FocusControl = edit_localidade
      end
      object Label14: TLabel
        Left = 624
        Top = 6
        Width = 19
        Height = 19
        Caption = 'UF'
        FocusControl = edit_uf
      end
      object Label15: TLabel
        Left = 373
        Top = 151
        Width = 73
        Height = 19
        Caption = 'Cod. IBGE'
        FocusControl = edit_ibge
      end
      object btn_cep: TBitBtn
        Left = 138
        Top = 28
        Width = 32
        Height = 32
        Glyph.Data = {
          42090000424D4209000000000000420000002800000018000000180000000100
          20000300000000090000130B0000130B000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          00010000000420150B186C461D57754D207E7A4F21957B4F2297754D207E6D45
          1D591F140A190000000600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000014050
          096C754B1FAE8F5C25EF9A6229FF9E652AFFA0662BFFA0662BFF9E652AFF9962
          29FF8F5B26F17D5022AF603F1D35000000000000000000000000000000000000
          000000000000000000000000000000000000000000001C1C0009506A0BCD59B3
          00FF687112FFA1672BFFAA6D2DFFAD6E2EFFAF702EFFAF702EFFAD6E2EFFAA6D
          2DFFA76A2CFF9D642AFF75551DFA6F49209E391C1C0900000000000000000000
          0000000000000000000000000000000000006B431B13784E21C2657411FF5DBC
          00FF59B200FF7F6E1DFFB0712FFFB1712FFFB1712FFFB1712FFFB1712FFFB171
          2FFFB0712FFF9F652BFF599406FF5C810BFF6C4D1BCD6D491815000000000000
          00000000000000000000000000002B2B00067A4E20C19C6429FF65850EFF5FBF
          00FF5EBD00FF677F0FFF9E6C2AFFB1712FFFB1712FFFB1712FFFB1712FFFB171
          2FFFB1712FFF8E6623FF59B000FF5EBD00FF637E0EFF754A20C9391C1C090000
          0000000000000000000000000000774E21949D652AFF9D6729FF619609FF5FBF
          00FF5FBF00FF5EBD00FF687A12FFAD702EFFB1712FFFB1712FFFB1712FFFB171
          2FFFB0702FFF727317FF5FBD00FF5EBD00FF5F9407FF8C6025FF7B4D209E0000
          0000000000000000000058391A31925D26F8A66A2CFF60860CFF5FBF00FF5FBF
          00FF5FBF00FF5FBE00FF65810FFFAD6F2EFFB1712FFFB1712FFFB1712FFFB171
          2FFFB0702FFF757218FF5EBC00FF5FBF00FF5FBF00FF677910FF905C27FA6440
          1B3800000000000000047D5021AAAA6D2EFF7A701AFF5CB800FF5FBF00FF5FBF
          00FF5FBF00FF5FBF00FF5BAE02FF916425FFB1712FFFB1712FFFB1712FFFB171
          2FFFB0702FFF777217FF5EBC00FF5FBF00FF5EBC00FF707415FFAA6C2EFF7C50
          21B300000006140A0A19935D27ECB0712FFF727616FF5DBB00FF5FBF00FF5FBF
          00FF5FBF00FF5BA803FF697512FFA36B2AFFB1712FFFB1712FFFB0712FFFB171
          2FFFAE6F2EFF697F10FF5FBD00FF5FBF00FF5FBF00FF667F0FFFAD6F2EFF945E
          27F3261C091B5D3D1A58A2682BFFB1712FFF8F6524FF59AD01FF5FBF00FF5FBF
          00FF599906FF8D6023FFAF702EFFB1712FFFB1712FFFB1712FFF986A26FF9462
          26FF9B6229FF5E9009FF5FBF00FF5FBF00FF5FBF00FF5EB701FF7F6F1CFFA369
          2BFF70471E5D69451A7EAB6E2DFFA76D2BFF686915FF599307FF59B001FF5993
          07FF946127FFB0712FFFB1712FFFB1712FFFB1712FFF976927FF5E9B06FF5AAC
          01FF5C9507FF5FBD01FF5FBF00FF5FBF00FF5FBF00FF5EBC00FF5C8B0AFFA067
          2AFF784D1F8267431C997A6F1AFF5E830BFF6D6C15FF916B24FF8B6B21FF9C65
          2AFFB0712FFFB1712FFFB1712FFFB1712FFFB0712FFF677B10FF5FBF00FF5FBF
          00FF5FBF00FF5FBF00FF5FBF00FF5FBF00FF5FBF00FF587B0AFF4F710BFFA066
          2BFF7B4E219A4C690AD05D8E08FF5C7A0CFF986228FFAF702EFFB0712FFFB171
          2FFFB1712FFFB1712FFFB1712FFFB1712FFFB0712FFF6D7D12FF5DBC00FF5FBF
          00FF5FBF00FF5FBF00FF5FBF00FF5FBF00FF5AB500FF5E6F0FFF5DBB00FF667F
          0FFF6E4620A04C6C09C263780FFF9E652AFFA1682AFFA3682BFFB1712FFFB171
          2FFFB1712FFFB1712FFFB1712FFFB1712FFFB1712FFF7D6E1BFF5BB800FF5FBF
          00FF5FBF00FF5FBF00FF5FBF00FF5FBF00FF5C810AFF5D9806FF62A506FF656A
          13FF545710AD48600A945BB300FF60890BFF597E0AFF8F6124FFB1712FFFB171
          2FFFB1712FFFB1712FFFB1712FFFB1712FFFB1712FFFA76A2DFF65850DFF5FBF
          00FF5FBF00FF5DB800FF5BAE02FF58A702FF59A503FF5FBF00FF538D05FF52A1
          01FF4F670B9E1725053759AA02FE5FBE00FF5FBF00FF5C9108FFA2692BFFB171
          2FFFB1712FFFB1712FFFB1712FFFB1712FFFB1712FFFB1712FFF9B6829FF5570
          0BFF648C0DFF706E16FF886322FF7F5E20FF5F800DFF5EBD00FF5FBF00FF55A7
          01FF2437053800000009548009E35FBF00FF5FBF00FF5EBD00FF5F810CFF9762
          27FFAB6D2EFFAE6F2EFFB1712FFFB1712FFFB1712FFFB0712FFF7C691DFF5499
          04FF7E5F1FFF636414FF516C0AFF5E9F06FF5DBC00FF5FBF00FF5FBF00FF5280
          08E90000000600000000425C0A695AB201FF5FBF00FF5FBF00FF5FBF00FF4A76
          06FF73541BFF845F21FFB0712FFFB1712FFFB1712FFFB1712FFFA86B2DFF5A66
          10FF58AE00FF5CB301FF5FBF00FF5FBF00FF5FBF00FF5FBF00FF5AB400FF485C
          0972000000000000000000000000537A0AD35CBA00FF59B200FF528706FF5DBA
          00FF57A502FF81651FFFB0712FFFB1712FFFB1712FFFB1712FFF956526FF5A65
          10FF59720DFF569806FF5FBF00FF5FBF00FF5FBF00FF5EBD00FF527A08DC0000
          00000000000000000000000000003355000F4F8506F2686E14FF946027FF5B9B
          06FF5F700FFFA4692CFFA26A2AFFA46B2AFFB1712FFFAE702EFFA76B2DFF6F59
          1BFF675C18FF5D710FFF55720BFF5FBF00FF5FBF00FF538D05F43D490C150000
          00000000000000000000000000000000000057570F234E7E06F25A6A0FFF7360
          1CFF665C16FF85681FFF6E7214FF617D0EFF956526FF81631FFF856620FFAB6E
          2EFF886C20FF599108FF528807FF4E7F06FF517709EC4D590C2B000000000000
          000000000000000000000000000000000000000000000E0E00124F5E0DC84D61
          0BFC566D0CFF8D6423FF786B1AFF5CBA00FF58A803FF6A7613FFA3692AFFB171
          2FFFB0702FFF8A6B21FF637010FC575A10C126330D1400000000000000000000
          0000000000000000000000000000000000000000000000000000000000014B32
          153D4A550CD85F6313F7568508FF59B000FF5AB500FF559E03FF936126FFAA6D
          2DFF9D642BF08A5926AA64411933000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000E1C2404405736196758421697585612BA5E4A18AD72491F826D46
          1C5B1D140A1A0000000600000000000000000000000000000000000000000000
          000000000000}
        TabOrder = 1
        OnClick = btn_cepClick
      end
      object edit_cep: TDBEdit
        Left = 24
        Top = 30
        Width = 105
        Height = 27
        DataField = 'cep'
        DataSource = ds_dados
        TabOrder = 0
      end
      object edit_logradouro: TDBEdit
        Left = 24
        Top = 103
        Width = 330
        Height = 27
        DataField = 'logradouro'
        DataSource = ds_dados
        TabOrder = 4
      end
      object edit_complemento: TDBEdit
        Left = 24
        Top = 176
        Width = 330
        Height = 27
        DataField = 'complemento'
        DataSource = ds_dados
        TabOrder = 6
      end
      object edit_bairro: TDBEdit
        Left = 373
        Top = 103
        Width = 300
        Height = 27
        DataField = 'bairro'
        DataSource = ds_dados
        TabOrder = 5
      end
      object edit_localidade: TDBEdit
        Left = 178
        Top = 30
        Width = 431
        Height = 27
        DataField = 'localidade'
        DataSource = ds_dados
        TabOrder = 2
      end
      object edit_uf: TDBEdit
        Left = 624
        Top = 30
        Width = 49
        Height = 27
        DataField = 'uf'
        DataSource = ds_dados
        TabOrder = 3
      end
      object edit_ibge: TDBEdit
        Left = 373
        Top = 176
        Width = 124
        Height = 27
        DataField = 'ibge'
        DataSource = ds_dados
        TabOrder = 7
      end
    end
  end
  inherited ds_dados: TDataSource
    Left = 504
    Top = 344
  end
  inherited q_dados: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from cidades'
      'order by cod_cidade')
    Left = 504
    Top = 288
    object q_dadoscod_cidade: TFDAutoIncField
      FieldName = 'cod_cidade'
      Origin = 'cod_cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object q_dadoslocalidade: TStringField
      FieldName = 'localidade'
      Origin = 'localidade'
      Required = True
      Size = 100
    end
    object q_dadoslogradouro: TStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 100
    end
    object q_dadosbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object q_dadoscomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 100
    end
    object q_dadoscep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00000\-000;0;_'
      FixedChar = True
      Size = 8
    end
    object q_dadosuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object q_dadosibge: TStringField
      FieldName = 'ibge'
      Origin = 'ibge'
      FixedChar = True
      Size = 7
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 56
    Top = 288
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        name = 'cep'
        Options = [poAutoCreated]
        Value = '17930000'
      end>
    Resource = 'ws/{cep}/json'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 136
    Top = 288
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 224
    Top = 288
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 224
    Top = 344
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'logradouro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'complemento'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'localidade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'unidade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ibge'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'gia'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 53
    Top = 344
    object FDMemTable1cep: TWideStringField
      FieldName = 'cep'
      EditMask = '00\.000\-000;0;_'
      Size = 255
    end
    object FDMemTable1logradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 255
    end
    object FDMemTable1complemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object FDMemTable1bairro: TWideStringField
      FieldName = 'bairro'
      Size = 255
    end
    object FDMemTable1localidade: TWideStringField
      FieldName = 'localidade'
      Size = 255
    end
    object FDMemTable1uf: TWideStringField
      FieldName = 'uf'
      Size = 255
    end
    object FDMemTable1unidade: TWideStringField
      FieldName = 'unidade'
      Size = 255
    end
    object FDMemTable1ibge: TWideStringField
      FieldName = 'ibge'
      Size = 255
    end
    object FDMemTable1gia: TWideStringField
      FieldName = 'gia'
      Size = 255
    end
  end
  object ds_json: TDataSource
    DataSet = FDMemTable1
    Left = 304
    Top = 288
  end
end
