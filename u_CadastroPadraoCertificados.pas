unit u_CadastroPadraoCertificados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_CadastroPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, System.UITypes;

type
  Tfrm_CadastroPadraoCertificados = class(Tfrm_CadastroPadrao)
    q_dadoscod_certificado: TFDAutoIncField;
    q_dadoscod_pessoa: TIntegerField;
    q_dadoscod_tipo: TIntegerField;
    q_dadosvalidade: TStringField;
    q_dadosdata_emissao: TDateField;
    q_dadosdata_vencimento: TDateField;
    q_dadossenha_pin: TStringField;
    q_dadossenha_puk: TStringField;
    q_dadosobservacoes: TStringField;
    Label2: TLabel;
    edit_cod_pessoa: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    edit_validade: TDBEdit;
    Label5: TLabel;
    edit_emissao: TDBEdit;
    Label6: TLabel;
    edit_vencimento: TDBEdit;
    Label7: TLabel;
    edit_pin: TDBEdit;
    Label8: TLabel;
    edit_puk: TDBEdit;
    cb_tipo: TDBLookupComboBox;
    edit_obervacoes: TDBMemo;
    Label9: TLabel;
    edit_nome_pessoa: TEdit;
    b_pequisa_pessoa: TBitBtn;
    q_dadosvalor: TBCDField;
    Label10: TLabel;
    edit_valor: TDBEdit;
    q_tipos: TFDQuery;
    ds_tipos: TDataSource;
    q_dadostipo: TStringField;
    q_pessoas: TFDQuery;
    ds_pessoas: TDataSource;
    q_dadosrazao_nome: TStringField;
    dtimeEmissao: TDateTimePicker;
    dtimeVenc: TDateTimePicker;
    procedure B_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edit_cod_pessoaChange(Sender: TObject);
    procedure b_pequisa_pessoaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grid_DadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dtimeEmissaoChange(Sender: TObject);
    procedure dtimeVencChange(Sender: TObject);
    procedure q_dadoscod_tipoChange(Sender: TField);
    procedure q_dadosdata_emissaoChange(Sender: TField);
    protected
    { Public declarations }
    function validar : boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroPadraoCertificados: Tfrm_CadastroPadraoCertificados;

implementation

{$R *.dfm}

uses u_pesquisa, u_dm, funcoes;

{=================================================}
{      AGORA � CHAMP E NAVE REBAIXADA,            }
{      O JET NO ENGATE DA DANADA                  }
{      DAQUI PRA RIVIERA � QUASE NADA,            }
{      DESCENDO A BAIXADA SENTE A ACELERADA.      }
{=================================================}

procedure Tfrm_CadastroPadraoCertificados.B_fecharClick(Sender: TObject);
begin
  inherited;
  close;
end;


procedure Tfrm_CadastroPadraoCertificados.b_pequisa_pessoaClick(
  Sender: TObject);
begin
  inherited;
     frm_pesquisa:= Tfrm_pesquisa.create(application);

     frm_pesquisa.tabela:= 'pessoas';
     frm_pesquisa.codigo:= 'cod_pessoa';
     frm_pesquisa.campo1:= 'razao_nome';
     frm_pesquisa.campo2:= 'cnpj_cpf';

     frm_pesquisa.rotulo_codigo:= 'C�digo';
     frm_pesquisa.rotulo_c1:= 'Raz�o / Nome';
     frm_pesquisa.rotulo_c2:= 'CNPJ / CPF';

     frm_pesquisa.largura_codigo:= 0.10; // 10% da largura do dbgrid
     frm_pesquisa.largura_c1:= 0.60;
     frm_pesquisa.largura_c2:= 0.25;


     frm_pesquisa.ShowModal;

     if frm_pesquisa.ModalResult = mrOk then
     begin
          edit_cod_pessoa.Text:= frm_pesquisa.q_dados.fieldbyname(frm_pesquisa.codigo).AsString;
     end;

     // retira o objeto da mem�ria
     frm_pesquisa.Free;
end;

procedure Tfrm_CadastroPadraoCertificados.dtimeEmissaoChange(Sender: TObject);
begin
  inherited;

  if dtimeEmissao.Date = null then
  begin
    exit;
  end;

  if varisnull(cb_tipo.KeyValue) then
  begin
    MessageDlg('Selecione o Tipo do Certificado Antes !',mtError,[mbOk],0);
    cb_Tipo.SetFocus;
  end
  else begin
    edit_emissao.Field.Text:= DateToStr(dtimeEmissao.Date);
  end;

end;

procedure Tfrm_CadastroPadraoCertificados.dtimeVencChange(Sender: TObject);
begin
  inherited;

   if dtimeVenc.Date = null then
  begin
    exit;
  end;

  if varisnull(cb_tipo.KeyValue) then
  begin
    MessageDlg('Selecione o Tipo do Certificado Antes !',mtError,[mbOk],0);
    cb_Tipo.SetFocus;
  end
  else begin
      edit_vencimento.Field.Text:= DateToStr(dtimeVenc.Date);
  end;

end;

procedure Tfrm_CadastroPadraoCertificados.edit_cod_pessoaChange(
  Sender: TObject);
begin
  inherited;

    edit_nome_pessoa.Text:= '';

     dm.q_geral.SQL.Clear;
     dm.q_geral.SQL.add(' select * from pessoas where cod_pessoa = ' + QuotedStr(edit_cod_pessoa.Text));
     dm.q_geral.open;

     if not dm.q_geral.IsEmpty
      then edit_nome_pessoa.Text:= dm.q_geral.FieldByName('razao_nome').AsString;

end;

procedure Tfrm_CadastroPadraoCertificados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      Action:= caFree;
      Frm_CadastroPadraoCertificados:= nil;
end;

procedure Tfrm_CadastroPadraoCertificados.FormCreate(Sender: TObject);
begin
  inherited;
    q_tipos.Open;
    q_pessoas.Open;
end;

procedure Tfrm_CadastroPadraoCertificados.grid_DadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
  data_atual: TDate;
  data_venc: TDate;
begin
  inherited;

  data_atual := Date();
  data_venc := Date() + 30;

  with grid_dados do
  begin
    if AnsiLowerCase(Column.FieldName) = 'data_vencimento' then
    begin
      if Column.Field.AsDateTime < data_venc then
      begin
        Canvas.Brush.Color := clRed;
      end;
      if Column.Field.AsDateTime < data_atual then
      begin
        Canvas.Brush.Color := clBlack;
        Canvas.Font.Color  := clWhite;
      end;
    end;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

end;

procedure Tfrm_CadastroPadraoCertificados.q_dadoscod_tipoChange(Sender: TField);
begin
  inherited;

    edit_emissao.Enabled:= true;
    edit_vencimento.Enabled:= true;
    dtimeEmissao.Enabled:= true;
    dtimeVenc.Enabled:= true;

     dm.q_geral.SQL.Clear;
     dm.q_geral.SQL.add(' select * from tipos where cod_tipo = ' + QuotedStr(cb_tipo.DataSource.DataSet.FieldByName(cb_tipo.KeyField).Value));
     dm.q_geral.open;

     if not dm.q_geral.IsEmpty
      then edit_validade.Field.Text:= dm.q_geral.FieldByName('validade').AsString;

end;

procedure Tfrm_CadastroPadraoCertificados.q_dadosdata_emissaoChange(
  Sender: TField);
  var
  DataEmissao : TDateTime;
  DataValidade : TDateTime;
  Validade : Integer;
begin
  inherited;

  DataEmissao:= StrToDate(edit_emissao.Field.Text);//Pega a Data da Emiss�o
  Validade:= StrToInt(edit_validade.Field.Text);//Pega os Meses de Validade
  DataValidade:= IncMonth(DataEmissao, Validade);// Cacula a Data de Emiss�o + Os Meses de Validade

  edit_vencimento.Field.Text:= DateToStr(DataValidade);

end;

function Tfrm_CadastroPadraoCertificados.validar: boolean;
begin

        if trim(edit_cod_pessoa.Text) = '' then
          begin
            MessageDlg('A Pessoa deve ser informada !',mtError,[mbOk],0);
            edit_cod_pessoa.SetFocus;
            exit;
          end;

          if varisnull(cb_tipo.KeyValue) then
          begin
            MessageDlg('O Tipo do Certificado deve ser informado !',mtError,[mbOk],0);
            cb_tipo.SetFocus;
            exit;
          end;

          if trim(edit_validade.Text) = '' then
          begin
            MessageDlg('A Validade deve ser informada !',mtError,[mbOk],0);
            edit_validade.SetFocus;
            exit;
          end;

        if trim(edit_emissao.Field.Text) = '' then
          begin
            MessageDlg('A Data de Emiss�o deve ser informada !',mtError,[mbOk],0);
            edit_emissao.SetFocus;
            exit;
          end;

          if trim(edit_vencimento.Field.Text) = '' then
          begin
            MessageDlg('A Data de Vencimento deve ser informada !',mtError,[mbOk],0);
            edit_vencimento.SetFocus;
            exit;
          end;

          if trim(edit_pin.Text) = '' then
          begin
            MessageDlg('O PIN do Certificado deve ser informado !',mtError,[mbOk],0);
            edit_pin.SetFocus;
            exit;
          end;

          if trim(edit_puk.Text) = '' then
          begin
            MessageDlg('O PUK do Certificado deve ser informado !',mtError,[mbOk],0);
            edit_puk.SetFocus;
            exit;
          end;

          result:= true;

end;

end.
