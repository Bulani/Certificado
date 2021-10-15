unit u_CadastroPadraoCidadesJSON;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_CadastroPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  IPPeerClient, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, System.UITypes;

type
  Tfrm_CadastroPadraoCidadesJSON = class(Tfrm_CadastroPadrao)
    btn_cep: TBitBtn;
    Label6: TLabel;
    Label2: TLabel;
    edit_cep: TDBEdit;
    Label10: TLabel;
    edit_logradouro: TDBEdit;
    Label11: TLabel;
    edit_complemento: TDBEdit;
    Label12: TLabel;
    edit_bairro: TDBEdit;
    Label13: TLabel;
    edit_localidade: TDBEdit;
    Label14: TLabel;
    edit_uf: TDBEdit;
    Label15: TLabel;
    edit_ibge: TDBEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1cep: TWideStringField;
    FDMemTable1logradouro: TWideStringField;
    FDMemTable1complemento: TWideStringField;
    FDMemTable1bairro: TWideStringField;
    FDMemTable1localidade: TWideStringField;
    FDMemTable1uf: TWideStringField;
    FDMemTable1unidade: TWideStringField;
    FDMemTable1ibge: TWideStringField;
    FDMemTable1gia: TWideStringField;
    ds_json: TDataSource;
    q_dadoscod_cidade: TFDAutoIncField;
    q_dadoslocalidade: TStringField;
    q_dadoslogradouro: TStringField;
    q_dadosbairro: TStringField;
    q_dadoscomplemento: TStringField;
    q_dadoscep: TStringField;
    q_dadosuf: TStringField;
    q_dadosibge: TStringField;
    procedure B_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cepClick(Sender: TObject);
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
  frm_CadastroPadraoCidadesJSON: Tfrm_CadastroPadraoCidadesJSON;

implementation

{$R *.dfm}

uses u_dm, funcoes;

procedure Tfrm_CadastroPadraoCidadesJSON.btn_cepClick(Sender: TObject);
begin
  inherited;
     RESTRequest1.Params.ParameterByName('cep').Value := edit_cep.Text;
     RESTRequest1.Execute;

     edit_cep.Field.Text := Remove(FDMemTable1.FieldByName('cep').Text);
     edit_localidade.Field.Text := FDMemTable1.FieldByName('localidade').Text;
     edit_uf.Field.Text := FDMemTable1.FieldByName('uf').Text;
     edit_logradouro.Field.Text := FDMemTable1.FieldByName('logradouro').Text;
     edit_bairro.Field.Text := FDMemTable1.FieldByName('bairro').Text;
     edit_complemento.Field.Text := FDMemTable1.FieldByName('complemento').Text;
     edit_ibge.Field.Text := FDMemTable1.FieldByName('ibge').Text;


end;

procedure Tfrm_CadastroPadraoCidadesJSON.B_alterarClick(Sender: TObject);
begin
  inherited;
  edit_cep.SetFocus;
end;


procedure Tfrm_CadastroPadraoCidadesJSON.B_fecharClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure Tfrm_CadastroPadraoCidadesJSON.B_incluirClick(Sender: TObject);
begin
  inherited;
  edit_cep.SetFocus;
end;


procedure Tfrm_CadastroPadraoCidadesJSON.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      Action:= caFree;
      Frm_CadastroPadraoCidadesJSON:= nil;
end;

function Tfrm_CadastroPadraoCidadesJSON.pode_excluir: string;
begin
     dm.Q_Geral.SQL.Clear;
     dm.Q_Geral.SQL.Add('select count(*) as total from pessoas where cod_cidade = ' + q_dados.FieldByName('cod_cidade').AsString);
     dm.Q_Geral.Open;
     if dm.Q_Geral.FieldByName('total').AsInteger > 0 then
     begin
       Result := 'A Cidade esta Relacionada com uma Pessoa, e n�o pode ser excluida!';
       exit;
     end;
end;

function Tfrm_CadastroPadraoCidadesJSON.validar: boolean;
begin

        if trim(edit_cep.Text) = '' then
          begin
            MessageDlg('O CEP deve ser informado !',mtError,[mbOk],0);
            edit_cep.SetFocus;
            exit;
          end;

        if trim(edit_Localidade.Text) = '' then
          begin
            MessageDlg('A Cidade deve ser informada !',mtError,[mbOk],0);
            edit_localidade.SetFocus;
            exit;
          end;

        if trim(edit_UF.Text) = '' then
          begin
            MessageDlg('A UF deve ser informada !',mtError,[mbOk],0);
            edit_UF.SetFocus;
            exit;
          end;

          result:= true;

end;

end.
