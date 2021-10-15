inherited frm_CadastroPadraoCertificados: Tfrm_CadastroPadraoCertificados
  Caption = 'Cadastro de Certificados'
  OnClose = FormClose
  OnCreate = FormCreate
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
      inherited grid_Dados: TDBGrid
        OnDrawColumnCell = grid_DadosDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'cod_certificado'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'razao_nome'
            Title.Caption = 'Pessoa'
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Title.Caption = 'Tipo'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_emissao'
            Title.Caption = 'Emiss'#227'o'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_vencimento'
            Title.Caption = 'Vencimento'
            Width = 90
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
        Left = 16
        Top = 11
        Width = 86
        Height = 19
        Caption = 'Cod. Pessoa'
        FocusControl = edit_cod_pessoa
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 135
        Height = 19
        Caption = 'Tipo do Certificado'
      end
      object Label4: TLabel
        Left = 16
        Top = 167
        Width = 60
        Height = 19
        Caption = 'Validade'
        FocusControl = edit_validade
      end
      object Label5: TLabel
        Left = 368
        Top = 89
        Width = 117
        Height = 19
        Caption = 'Data da Emiss'#227'o'
        FocusControl = edit_emissao
      end
      object Label6: TLabel
        Left = 529
        Top = 88
        Width = 143
        Height = 19
        Caption = 'Data do Vencimento'
        FocusControl = edit_vencimento
      end
      object Label7: TLabel
        Left = 114
        Top = 167
        Width = 74
        Height = 19
        Caption = 'Senha PIN'
        FocusControl = edit_pin
      end
      object Label8: TLabel
        Left = 324
        Top = 167
        Width = 77
        Height = 19
        Caption = 'Senha PUK'
        FocusControl = edit_puk
      end
      object Label9: TLabel
        Left = 16
        Top = 239
        Width = 89
        Height = 19
        Caption = 'Observa'#231#245'es'
        FocusControl = edit_pin
      end
      object Label10: TLabel
        Left = 531
        Top = 168
        Width = 37
        Height = 19
        Caption = 'Valor'
        FocusControl = edit_valor
      end
      object dtimeVenc: TDateTimePicker
        Left = 529
        Top = 113
        Width = 152
        Height = 27
        Date = 43766.460217766200000000
        Time = 43766.460217766200000000
        Enabled = False
        TabOrder = 7
        OnChange = dtimeVencChange
      end
      object dtimeEmissao: TDateTimePicker
        Left = 368
        Top = 113
        Width = 131
        Height = 27
        Date = 43766.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 43766.000000000000000000
        Enabled = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 5
        OnChange = dtimeEmissaoChange
      end
      object edit_cod_pessoa: TDBEdit
        Left = 16
        Top = 35
        Width = 105
        Height = 27
        DataField = 'cod_pessoa'
        DataSource = ds_dados
        TabOrder = 0
        OnChange = edit_cod_pessoaChange
      end
      object edit_validade: TDBEdit
        Left = 16
        Top = 192
        Width = 72
        Height = 27
        DataField = 'validade'
        DataSource = ds_dados
        TabOrder = 8
      end
      object edit_emissao: TDBEdit
        Left = 368
        Top = 113
        Width = 100
        Height = 27
        DataField = 'data_emissao'
        DataSource = ds_dados
        Enabled = False
        TabOrder = 4
      end
      object edit_vencimento: TDBEdit
        Left = 529
        Top = 113
        Width = 120
        Height = 27
        DataField = 'data_vencimento'
        DataSource = ds_dados
        Enabled = False
        TabOrder = 6
      end
      object edit_pin: TDBEdit
        Left = 114
        Top = 192
        Width = 185
        Height = 27
        DataField = 'senha_pin'
        DataSource = ds_dados
        TabOrder = 9
      end
      object edit_puk: TDBEdit
        Left = 324
        Top = 192
        Width = 185
        Height = 27
        DataField = 'senha_puk'
        DataSource = ds_dados
        TabOrder = 10
      end
      object cb_tipo: TDBLookupComboBox
        Left = 16
        Top = 113
        Width = 330
        Height = 27
        DataField = 'cod_tipo'
        DataSource = ds_dados
        KeyField = 'cod_tipo'
        ListField = 'tipo'
        ListSource = ds_tipos
        TabOrder = 3
      end
      object edit_obervacoes: TDBMemo
        Left = 16
        Top = 264
        Width = 665
        Height = 112
        DataField = 'observacoes'
        DataSource = ds_dados
        MaxLength = 255
        TabOrder = 12
      end
      object edit_nome_pessoa: TEdit
        Left = 181
        Top = 35
        Width = 500
        Height = 27
        Color = clScrollBar
        Enabled = False
        TabOrder = 2
      end
      object b_pequisa_pessoa: TBitBtn
        Left = 134
        Top = 33
        Width = 34
        Height = 32
        Glyph.Data = {
          42090000424D4209000000000000420000002800000018000000180000000100
          20000300000000090000130B0000130B000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007F0000026543284B0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007F00000265586B9F6075C5F46453
          5881000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006359689A6079D0FF607BD5FF6078
          CBFC6457648C0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000635359835D76CDFD607BD5FF607B
          D5FF5D75C9FD6357658F00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007F000002645769986079D0FF607B
          D5FF607BD5FF5D75C9FD6356638B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007F00000261596CA06079
          D0FF607BD5FF607BD5FF5F75CCFB6454587F0000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007F0000026159
          6CA06079D0FF607BD5FF607BD5FF5F6CB2E86435112B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007F00
          0002645867966079CFFC5E6FB5FD66524BD66644110F6633000A6A4E2B756C57
          3BAC6B583FC16B563EB46D513187673F17200000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00007F0000026450567C664F4C906C5F4DE4694F33CB6B5842D3735F47F3997C
          4EDDA58E58DC9D8553DC7B6344EB6D604EE7694C2C6800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000006B4B2366695B4CF88F7545E4DDCF8BF5F0E7
          A2FFF0E7A2FFF0E7A2FFE5DA99FDA1874FE06F5E52F86A4A2A60000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000006C563CB1856F45E3E6DA99FDF0E7A2FFF0E7
          A2FFF0E7A2FFF0E7A2FFD6C482EEB49253E29C824DDF6A5A47DA5C2E000B0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006C3D0F216D5D50F5BFA969E5F0E7A2FFF0E7A2FFF0E7
          A2FFF0E7A2FFF0E7A2FFDACA86F2BC763DF1C0A667EF705D48F7674A27670000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006A4725606F5B46FAE1D493FDF0E7A2FFF0E7A2FFF0E7
          A2FFF0E7A2FFF0E7A2FFF0E7A2FFB9894CDDC1A464DF866F45E36B52378E0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006B4926646F5B44F7E9DE9AFFF0E7A2FFF0E7A2FFF0E7
          A2FFF0E7A2FFF0E7A2FFF0E7A2FFA77E40E4C4AE6CE78C7248E16A5438940000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006842193D6D6354FECBB878EFF0E7A2FFF0E7A2FFF0E7
          A2FFF0E7A2FFF0E7A2FFF0E7A2FFEFE6A1FFEADF9AFF776240EF6B4D30790000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000007F0000026B5A43CC9B804CDFEFE6A1FFF0E7A2FFF0E7
          A2FFF0E7A2FFF0E7A2FFF0E7A2FFF0E7A2FFB49D60E36A6150F16C4619280000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000694B285E6F634DFCAD965CE2EFE6A1FFF0E7
          A2FFF0E7A2FFF0E7A2FFF0E7A2FFCAB675E875634AF16A502E95000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006A4E2E7F6F5F52F8907748E0BBA5
          68E3C8B171EEC1A86CE79D8651DC6F624DF96B5334AB552A0006000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000006B49244C6C573FB56C5E
          49EB6D6456FF6B5F4FF46C5740C66A4C296E7F00000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006633
          000A6C3D07216F2F001000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        TabOrder = 1
        OnClick = b_pequisa_pessoaClick
      end
      object edit_valor: TDBEdit
        Left = 531
        Top = 192
        Width = 150
        Height = 27
        DataField = 'valor'
        DataSource = ds_dados
        TabOrder = 11
      end
    end
  end
  inherited ds_dados: TDataSource
    Left = 632
    Top = 360
  end
  inherited q_dados: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select c.*, p.razao_nome, t.tipo from certificados as c'
      'inner join pessoas as p on (c.cod_pessoa = p.cod_pessoa)'
      'inner join tipos as t on (c.cod_tipo = t.cod_tipo)'
      'order by c.data_emissao')
    Left = 552
    Top = 360
    object q_dadoscod_certificado: TFDAutoIncField
      FieldName = 'cod_certificado'
      Origin = 'cod_certificado'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object q_dadoscod_pessoa: TIntegerField
      FieldName = 'cod_pessoa'
      Origin = 'cod_pessoa'
      Required = True
    end
    object q_dadoscod_tipo: TIntegerField
      FieldName = 'cod_tipo'
      Origin = 'cod_tipo'
      Required = True
      OnChange = q_dadoscod_tipoChange
    end
    object q_dadosvalidade: TStringField
      FieldName = 'validade'
      Origin = 'validade'
      Required = True
      FixedChar = True
      Size = 2
    end
    object q_dadosdata_emissao: TDateField
      FieldName = 'data_emissao'
      Origin = 'data_emissao'
      Required = True
      OnChange = q_dadosdata_emissaoChange
      EditMask = '00/00/0000;1;_'
    end
    object q_dadosdata_vencimento: TDateField
      FieldName = 'data_vencimento'
      Origin = 'data_vencimento'
      Required = True
      EditMask = '00/00/0000;1;_'
    end
    object q_dadossenha_pin: TStringField
      FieldName = 'senha_pin'
      Origin = 'senha_pin'
      Required = True
      Size = 50
    end
    object q_dadossenha_puk: TStringField
      FieldName = 'senha_puk'
      Origin = 'senha_puk'
      Required = True
      Size = 50
    end
    object q_dadosobservacoes: TStringField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Size = 255
    end
    object q_dadosvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = 'R$ ###,##0.00'
      Precision = 18
      Size = 2
    end
    object q_dadostipo: TStringField
      FieldKind = fkLookup
      FieldName = 'tipo'
      LookupDataSet = q_tipos
      LookupKeyFields = 'cod_tipo'
      LookupResultField = 'tipo'
      KeyFields = 'cod_tipo'
      Size = 100
      Lookup = True
    end
    object q_dadosrazao_nome: TStringField
      FieldKind = fkLookup
      FieldName = 'razao_nome'
      LookupDataSet = q_pessoas
      LookupKeyFields = 'cod_pessoa'
      LookupResultField = 'razao_nome'
      KeyFields = 'cod_pessoa'
      Size = 100
      Lookup = True
    end
  end
  object q_tipos: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from tipos')
    Left = 552
    Top = 310
  end
  object ds_tipos: TDataSource
    DataSet = q_tipos
    Left = 632
    Top = 310
  end
  object q_pessoas: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from pessoas'
      'order by razao_nome')
    Left = 553
    Top = 267
  end
  object ds_pessoas: TDataSource
    DataSet = q_pessoas
    Left = 633
    Top = 270
  end
end
