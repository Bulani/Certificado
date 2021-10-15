unit u_CadastroPadraoCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_CadastroPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.UITypes, IPPeerClient, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  Tfrm_CadastroPadraoCidades = class(Tfrm_CadastroPadrao)
    q_dadoscod_cidade: TFDAutoIncField;
    q_dadosuf: TStringField;
    lblNome: TLabel;
    edit_nome: TDBEdit;
    lblUF: TLabel;
    edit_uf: TDBEdit;
    edit_cep: TDBEdit;
    lblCEP: TLabel;
    q_dadoscep: TStringField;
    q_dadoslogradouro: TStringField;
    q_dadoscomplemento: TStringField;
    q_dadosbairro: TStringField;
    q_dadosibge: TStringField;
    q_dadoslocalidade: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure B_incluirClick(Sender: TObject);
    procedure B_cancelarClick(Sender: TObject);
  protected
    { Public declarations }
    procedure controle_visual; override;
    function pode_excluir : string; override;
    function validar : boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroPadraoCidades: Tfrm_CadastroPadraoCidades;

implementation

{$R *.dfm}

uses u_dm;

{ Tfrm_CadastroPadraoCidades }

procedure Tfrm_CadastroPadraoCidades.B_cancelarClick(Sender: TObject);
begin
  inherited;
  edit_pesq.SetFocus;
end;

procedure Tfrm_CadastroPadraoCidades.B_incluirClick(Sender: TObject);
begin
  inherited;
  edit_nome.SetFocus;
end;

procedure Tfrm_CadastroPadraoCidades.controle_visual;
begin
  inherited;

end;


procedure Tfrm_CadastroPadraoCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      Action:= caFree;
      Frm_CadastroPadraoCidades:= nil;
end;

function Tfrm_CadastroPadraoCidades.pode_excluir: string;
begin

     dm.Q_Geral.SQL.Clear;
     dm.Q_Geral.SQL.Add('select count(*) as total from clientes where cod_cidade = ' + q_dados.FieldByName('cod_cidade').AsString);
     dm.Q_Geral.Open;
     if dm.Q_Geral.FieldByName('total').AsInteger > 0 then
     begin
       result := 'A Cidade esta Relacionada com um Cliente, e n�o pode ser excluida!';
       exit;
     end;


end;

function Tfrm_CadastroPadraoCidades.validar: boolean;
begin

      if trim(edit_nome.Text) = '' then
        begin
          MessageDlg('O nome deve ser informado !',mtError,[mbOk],0);
          edit_nome.SetFocus;
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
