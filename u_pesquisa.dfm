object frm_pesquisa: Tfrm_pesquisa
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa'
  ClientHeight = 384
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 713
    Height = 89
  end
  object Label1: TLabel
    Left = 13
    Top = 14
    Width = 79
    Height = 23
    Caption = 'Pesquisa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 0
    Top = 95
    Width = 713
    Height = 242
  end
  object edit_pesq: TEdit
    Left = 13
    Top = 43
    Width = 684
    Height = 27
    TabOrder = 0
    OnChange = edit_pesqChange
  end
  object btnOk: TBitBtn
    Left = 435
    Top = 343
    Width = 128
    Height = 41
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnOkClick
  end
  object BitBtn2: TBitBtn
    Left = 569
    Top = 343
    Width = 128
    Height = 41
    Caption = 'Cancelar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 95
    Width = 710
    Height = 234
    DataSource = ds_dados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object ds_dados: TDataSource
    DataSet = q_dados
    Left = 336
    Top = 163
  end
  object q_dados: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from cidades')
    Left = 424
    Top = 163
  end
end
