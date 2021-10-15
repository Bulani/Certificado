inherited frm_CadastroPadraoClientes: Tfrm_CadastroPadraoClientes
  Caption = 'Cadastro Padrao Clientes'
  OnClose = FormClose
  ExplicitWidth = 724
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 19
  inherited PageControl1: TPageControl
    ActivePage = tabCadastro
    inherited tabConsulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 30
      ExplicitWidth = 700
      ExplicitHeight = 382
      inherited grid_Dados: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_cliente'
            Title.Caption = 'Codigo'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Title.Caption = 'Endere'#231'o'
            Width = 275
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
        Left = 9
        Top = 21
        Width = 42
        Height = 19
        Caption = 'Nome'
        FocusControl = edit_nome
      end
      object Label3: TLabel
        Left = 9
        Top = 85
        Width = 27
        Height = 19
        Caption = 'CPF'
        FocusControl = edit_cpf
      end
      object Label4: TLabel
        Left = 163
        Top = 85
        Width = 21
        Height = 19
        Caption = 'RG'
        FocusControl = edit_rg
      end
      object Label6: TLabel
        Left = 9
        Top = 149
        Width = 65
        Height = 19
        Caption = 'Endere'#231'o'
        FocusControl = edit_endereco
      end
      object Label7: TLabel
        Left = 440
        Top = 149
        Width = 42
        Height = 19
        Caption = 'Bairro'
        FocusControl = edit_bairro
      end
      object Label8: TLabel
        Left = 9
        Top = 212
        Width = 48
        Height = 19
        Caption = 'Cidade'
        FocusControl = edit_cod_cidade
      end
      object Label9: TLabel
        Left = 534
        Top = 212
        Width = 28
        Height = 19
        Caption = 'CEP'
        FocusControl = edit_cep
      end
      object Label11: TLabel
        Left = 9
        Top = 274
        Width = 61
        Height = 19
        Caption = 'Telefone'
        FocusControl = edit_telefone
      end
      object Label12: TLabel
        Left = 163
        Top = 274
        Width = 49
        Height = 19
        Caption = 'Celular'
        FocusControl = edit_celular
      end
      object Label13: TLabel
        Left = 331
        Top = 273
        Width = 39
        Height = 19
        Caption = 'Email'
        FocusControl = edit_email
      end
      object Label14: TLabel
        Left = 301
        Top = 85
        Width = 82
        Height = 19
        Caption = 'Nascimento'
        FocusControl = edit_nascimento
      end
      object Label5: TLabel
        Left = 347
        Top = 150
        Width = 57
        Height = 19
        Caption = 'Numero'
        FocusControl = edit_numero
      end
      object edit_nome: TDBEdit
        Left = 9
        Top = 46
        Width = 681
        Height = 27
        DataField = 'nome'
        DataSource = ds_dados
        TabOrder = 0
      end
      object edit_cpf: TDBEdit
        Left = 9
        Top = 109
        Width = 132
        Height = 27
        DataField = 'cpf'
        DataSource = ds_dados
        TabOrder = 1
      end
      object edit_rg: TDBEdit
        Left = 163
        Top = 109
        Width = 118
        Height = 27
        DataField = 'rg'
        DataSource = ds_dados
        TabOrder = 2
      end
      object edit_endereco: TDBEdit
        Left = 9
        Top = 174
        Width = 325
        Height = 27
        DataField = 'endereco'
        DataSource = ds_dados
        TabOrder = 5
      end
      object edit_bairro: TDBEdit
        Left = 440
        Top = 174
        Width = 250
        Height = 27
        DataField = 'bairro'
        DataSource = ds_dados
        TabOrder = 7
      end
      object edit_cod_cidade: TDBEdit
        Left = 9
        Top = 236
        Width = 83
        Height = 27
        DataField = 'cod_cidade'
        DataSource = ds_dados
        TabOrder = 8
        OnChange = edit_cod_cidadeChange
      end
      object b_pequisa_cidade: TBitBtn
        Left = 98
        Top = 235
        Width = 33
        Height = 30
        Caption = '?'
        TabOrder = 9
        OnClick = b_pequisa_cidadeClick
      end
      object edit_nome_cidade: TEdit
        Left = 137
        Top = 237
        Width = 391
        Height = 27
        Color = clScrollBar
        Enabled = False
        TabOrder = 10
      end
      object edit_cep: TDBEdit
        Left = 534
        Top = 236
        Width = 156
        Height = 27
        DataField = 'cep'
        DataSource = ds_dados
        TabOrder = 11
      end
      object edit_telefone: TDBEdit
        Left = 9
        Top = 298
        Width = 132
        Height = 27
        DataField = 'telefone'
        DataSource = ds_dados
        TabOrder = 12
      end
      object edit_celular: TDBEdit
        Left = 163
        Top = 298
        Width = 144
        Height = 27
        DataField = 'celular'
        DataSource = ds_dados
        TabOrder = 13
      end
      object edit_email: TDBEdit
        Left = 331
        Top = 298
        Width = 359
        Height = 27
        DataField = 'email'
        DataSource = ds_dados
        TabOrder = 14
      end
      object edit_nascimento: TDBEdit
        Left = 301
        Top = 109
        Width = 123
        Height = 27
        DataField = 'data_nascimento'
        DataSource = ds_dados
        TabOrder = 3
      end
      object rg_sexo: TDBRadioGroup
        Left = 448
        Top = 85
        Width = 242
        Height = 57
        Caption = 'Sexo'
        Columns = 2
        DataField = 'sexo'
        DataSource = ds_dados
        Items.Strings = (
          'Masculino'
          'Feminino')
        TabOrder = 4
        Values.Strings = (
          'M'
          'F')
      end
      object edit_numero: TDBEdit
        Left = 347
        Top = 174
        Width = 77
        Height = 27
        DataField = 'numero'
        DataSource = ds_dados
        TabOrder = 6
      end
    end
  end
  inherited ds_dados: TDataSource
    Left = 648
    Top = 359
  end
  inherited q_dados: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from clientes'
      'order by nome')
    Left = 568
    Top = 359
    object q_dadoscod_cliente: TFDAutoIncField
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object q_dadosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object q_dadoscpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '000.000.000-00;0;_'
      FixedChar = True
      Size = 11
    end
    object q_dadosrg: TStringField
      FieldName = 'rg'
      Origin = 'rg'
      EditMask = '00.000.000-0;0;_'
      FixedChar = True
      Size = 9
    end
    object q_dadosdata_nascimento: TDateField
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
      EditMask = '00/00/0000;1;_'
    end
    object q_dadossexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      FixedChar = True
      Size = 1
    end
    object q_dadosendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object q_dadosbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object q_dadoscod_cidade: TIntegerField
      FieldName = 'cod_cidade'
      Origin = 'cod_cidade'
    end
    object q_dadoscep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00000-000;0;_'
      FixedChar = True
      Size = 8
    end
    object q_dadostelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(00)0000-0000;0;_'
      Size = 15
    end
    object q_dadoscelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(00)00000-0000;0;_'
      Size = 15
    end
    object q_dadosemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object q_dadosnumero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
    end
  end
end
