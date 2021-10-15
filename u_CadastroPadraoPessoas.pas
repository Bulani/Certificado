unit u_CadastroPadraoPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_CadastroPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Buttons, IPPeerClient, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.UITypes;

type
  Tfrm_CadastroPadraoPessoas = class(Tfrm_CadastroPadrao)
    Label3: TLabel;
    edit_razao_nome: TDBEdit;
    Label4: TLabel;
    edit_fantasia_apelido: TDBEdit;
    rg_tipo: TDBRadioGroup;
    Label2: TLabel;
    edit_cnpj_cpf: TDBEdit;
    Label5: TLabel;
    edit_ie_rg: TDBEdit;
    Label6: TLabel;
    edit_nascimento: TDBEdit;
    Label8: TLabel;
    edit_cod_cidade: TDBEdit;
    b_pequisa_cidade: TBitBtn;
    edit_nome_cidade: TEdit;
    edit_cep: TDBEdit;
    Label9: TLabel;
    Label7: TLabel;
    edit_endereco: TDBEdit;
    Label10: TLabel;
    edit_numero: TDBEdit;
    Label11: TLabel;
    edit_bairro: TDBEdit;
    Label12: TLabel;
    edit_contato: TDBEdit;
    rg_sexo: TDBRadioGroup;
    Label14: TLabel;
    edit_email: TDBEdit;
    btn_cnpj: TBitBtn;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1nome: TWideStringField;
    FDMemTable1telefone: TWideStringField;
    FDMemTable1email: TWideStringField;
    FDMemTable1bairro: TWideStringField;
    FDMemTable1logradouro: TWideStringField;
    FDMemTable1numero: TWideStringField;
    FDMemTable1cep: TWideStringField;
    FDMemTable1fantasia: TWideStringField;
    FDMemTable1cnpj: TWideStringField;
    q_dadoscod_pessoa: TFDAutoIncField;
    q_dadostipo: TStringField;
    q_dadosrazao_nome: TStringField;
    q_dadosfantasia_apelido: TStringField;
    q_dadoscnpj_cpf: TStringField;
    q_dadosie_rg: TStringField;
    q_dadosdata_nascimento: TDateField;
    q_dadossexo: TStringField;
    q_dadoscod_cidade: TIntegerField;
    q_dadosendereco: TStringField;
    q_dadosbairro: TStringField;
    q_dadoscep: TStringField;
    q_dadosemail: TStringField;
    q_dadoscontato: TStringField;
    q_dadosnumero: TStringField;
    procedure B_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_pequisa_cidadeClick(Sender: TObject);
    procedure edit_cod_cidadeChange(Sender: TObject);
    procedure btn_cnpjClick(Sender: TObject);
    procedure rg_tipoClick(Sender: TObject);
    procedure B_incluirClick(Sender: TObject);
    procedure B_alterarClick(Sender: TObject);
  protected
    { Public declarations }
    function pode_excluir : string; override;
    function validar : boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroPadraoPessoas: Tfrm_CadastroPadraoPessoas;

implementation

{$R *.dfm}

uses u_dm, u_pesquisa, funcoes;

procedure Tfrm_CadastroPadraoPessoas.btn_cnpjClick(Sender: TObject);
begin
  inherited;
     RESTRequest1.Params.ParameterByName('cnpj').Value := edit_cnpj_cpf.Field.Text;
     RESTRequest1.Execute;

     edit_razao_nome.Field.Text := FDMemTable1.FieldByName('nome').Text;
     edit_fantasia_apelido.Field.Text := FDMemTable1.FieldByName('fantasia').Text;
     edit_cnpj_cpf.Field.Text := Remove(FDMemTable1.FieldByName('cnpj').Text);
     edit_contato.Field.Text := FDMemTable1.FieldByName('telefone').Text;
     edit_cep.Field.Text := Remove(FDMemTable1.FieldByName('cep').Text);
     edit_endereco.Field.Text := FDMemTable1.FieldByName('logradouro').Text;
     edit_numero.Field.Text := FDMemTable1.FieldByName('numero').Text;
     edit_bairro.Field.Text := FDMemTable1.FieldByName('bairro').Text;
     edit_email.Field.Text:= FDMemTable1.FieldByName('email').Text;

end;

procedure Tfrm_CadastroPadraoPessoas.B_alterarClick(Sender: TObject);
begin
  inherited;

  // PESSOA JURIDICA
  if rg_tipo.ItemIndex = 0 then
  begin
    btn_cnpj.Enabled:= true;
    edit_cnpj_cpf.Field.EditMask:= '00\.000\.000\/0000\-00;0;_';
    edit_nascimento.Enabled:= false;
    rg_sexo.Enabled:= false;
  end

  // PESSOA FISICA
  else
  begin
    btn_cnpj.Enabled:= false;
    edit_cnpj_cpf.Field.EditMask:= '000\.000\.000\-00;0;_';
    edit_nascimento.Enabled:= true;
    rg_sexo.Enabled:= true;
  end;

end;

procedure Tfrm_CadastroPadraoPessoas.B_fecharClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure Tfrm_CadastroPadraoPessoas.B_incluirClick(Sender: TObject);
begin
  inherited;
  rg_tipo.ItemIndex:= 0;
end;

procedure Tfrm_CadastroPadraoPessoas.b_pequisa_cidadeClick(Sender: TObject);
begin
  inherited;
     frm_pesquisa:= Tfrm_pesquisa.create(application);

     frm_pesquisa.tabela:= 'cidades';
     frm_pesquisa.codigo:= 'cod_cidade';
     frm_pesquisa.campo1:= 'localidade';
     frm_pesquisa.campo2:= 'cep';

     frm_pesquisa.rotulo_codigo:= 'C�digo';
     frm_pesquisa.rotulo_c1:= 'Nome';
     frm_pesquisa.rotulo_c2:= 'CEP';

     frm_pesquisa.largura_codigo:= 0.10; // 10% da largura do dbgrid
     frm_pesquisa.largura_c1:= 0.45;
     frm_pesquisa.largura_c2:= 0.25;


     frm_pesquisa.ShowModal;

     if frm_pesquisa.ModalResult = mrOk then
     begin
          edit_cod_cidade.Text:= frm_pesquisa.q_dados.fieldbyname(frm_pesquisa.codigo).AsString;
     end;

     // retira o objeto da mem�ria
     frm_pesquisa.Free;
end;

procedure Tfrm_CadastroPadraoPessoas.edit_cod_cidadeChange(Sender: TObject);
begin
  inherited;
  edit_nome_cidade.Text:= '';

     dm.q_geral.SQL.Clear;
     dm.q_geral.SQL.add(' select * from cidades where cod_cidade = ' + QuotedStr(edit_cod_cidade.Text));
     dm.q_geral.open;

     if not dm.q_geral.IsEmpty
      then edit_nome_cidade.Text:= dm.q_geral.FieldByName('localidade').AsString;
      edit_cep.Text:= dm.q_geral.FieldByName('cep').AsString;
end;

procedure Tfrm_CadastroPadraoPessoas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      Action:= caFree;
      Frm_CadastroPadraoPessoas:= nil;
end;

function Tfrm_CadastroPadraoPessoas.pode_excluir: string;
begin
     dm.Q_Geral.SQL.Clear;
     dm.Q_Geral.SQL.Add('select count(*) as total from certificados where cod_pessoa = ' + q_dados.FieldByName('cod_pessoa').AsString);
     dm.Q_Geral.Open;
     if dm.Q_Geral.FieldByName('total').AsInteger > 0 then
     begin
       Result := 'A Pessoa esta Relacionada com um Certificado, e n�o pode ser excluida!';
       exit;
     end;
end;

procedure Tfrm_CadastroPadraoPessoas.rg_tipoClick(Sender: TObject);
begin
  inherited;

  // PESSOA JURIDICA
  if rg_tipo.ItemIndex = 0 then
  begin
    btn_cnpj.Enabled:= true;
    edit_cnpj_cpf.Field.EditMask:= '00\.000\.000\/0000\-00;0;_';
    edit_cnpj_cpf.Field.Text:= '';
    edit_nascimento.Enabled:= false;
    rg_sexo.Enabled:= false;
  end

  // PESSOA FISICA
  else
  begin
    btn_cnpj.Enabled:= false;
    edit_cnpj_cpf.Field.EditMask:= '000\.000\.000\-00;0;_';
    edit_cnpj_cpf.Field.Text:= '';
    edit_nascimento.Enabled:= true;
    rg_sexo.Enabled:= true;
  end;

end;

function Tfrm_CadastroPadraoPessoas.validar: boolean;
begin

  if trim(edit_razao_nome.Text) = '' then
    begin
      MessageDlg('A Raz�o Social / Nome, � de preenchimento obrigatorio !',mtError,[mbOk],0);
      edit_razao_nome.SetFocus;
      exit;
    end;

    if trim(edit_cnpj_cpf.Text) = '' then
    begin
      MessageDlg('O CNPJ / CPF deve ser preenchido !',mtError,[mbOk],0);
      edit_cnpj_cpf.SetFocus;
      exit;
    end;

  // PESSOA JURIDICA
  if rg_tipo.ItemIndex = 0 then
  begin
    if not isCNPJ(edit_cnpj_cpf.Text) then
    begin
      MessageDlg('O CNPJ deve ser valido !',mtError,[mbOk],0);
      edit_cnpj_cpf.SetFocus;
      exit;
    end;
  end

    // PESSOA FISICA
  else
  begin
    if not valida_cpf(edit_cnpj_cpf.Text) then
    begin
      MessageDlg('O CPF deve ser valido !',mtError,[mbOk],0);
      edit_cnpj_cpf.SetFocus;
      exit;
    end;
  end;

  result:= True;

end;

end.
