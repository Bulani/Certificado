unit u_CadastroPadraoTiposCertificados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_CadastroPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.UITypes;

type
  Tfrm_CadastroPadraoTiposCertificados = class(Tfrm_CadastroPadrao)
    q_dadoscod_tipo: TFDAutoIncField;
    q_dadostipo: TStringField;
    q_dadosvalidade: TStringField;
    q_dadosdescricao: TStringField;
    Label2: TLabel;
    edit_tipo: TDBEdit;
    Label3: TLabel;
    edit_validade: TDBEdit;
    Label4: TLabel;
    edit_descricao: TDBMemo;
    q_dadosvalor: TBCDField;
    Label5: TLabel;
    edit_valor: TDBEdit;
    cbFiltro: TComboBox;
    Label11: TLabel;
    procedure B_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure B_incluirClick(Sender: TObject);
    procedure B_alterarClick(Sender: TObject);
    procedure cbFiltroChange(Sender: TObject);
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
  frm_CadastroPadraoTiposCertificados: Tfrm_CadastroPadraoTiposCertificados;

implementation

{$R *.dfm}

uses u_dm;

procedure Tfrm_CadastroPadraoTiposCertificados.B_alterarClick(Sender: TObject);
begin
  inherited;
  edit_tipo.SetFocus;
end;

procedure Tfrm_CadastroPadraoTiposCertificados.B_fecharClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure Tfrm_CadastroPadraoTiposCertificados.B_incluirClick(Sender: TObject);
begin
  inherited;
  edit_tipo.SetFocus;
end;

procedure Tfrm_CadastroPadraoTiposCertificados.cbFiltroChange(Sender: TObject);
begin
  inherited;

  if cbFiltro.ItemIndex = 0 then
  begin
    Frm_CadastroPadraoTiposCertificados.campo_pesquisa:= 'cod_tipo';
    Frm_CadastroPadraoTiposCertificados.carregar_dados('');
  end;

  if cbFiltro.ItemIndex = 1 then
  begin
    Frm_CadastroPadraoTiposCertificados.campo_pesquisa:= 'tipo';
    Frm_CadastroPadraoTiposCertificados.carregar_dados('');
  end;


end;

procedure Tfrm_CadastroPadraoTiposCertificados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      Action:= caFree;
      Frm_CadastroPadraoTiposCertificados:= nil;
end;

function Tfrm_CadastroPadraoTiposCertificados.pode_excluir: string;
begin
     dm.Q_Geral.SQL.Clear;
     dm.Q_Geral.SQL.Add('select count(*) as total from certificados where cod_tipo = ' + q_dados.FieldByName('cod_tipo').AsString);
     dm.Q_Geral.Open;
     if dm.Q_Geral.FieldByName('total').AsInteger > 0 then
     begin
       Result := 'Esse Tipo de Certificado n�o pode ser excluido, pois ele possui relacionamento com um Certificao!';
       exit;
     end;
end;

function Tfrm_CadastroPadraoTiposCertificados.validar: boolean;
begin

          if trim(edit_tipo.Text) = '' then
          begin
            MessageDlg('O Tipo deve ser informado !',mtError,[mbOk],0);
            edit_tipo.SetFocus;
            exit;
          end;

        if trim(edit_validade.Text) = '' then
          begin
            MessageDlg('A Validade deve ser informada !',mtError,[mbOk],0);
            edit_validade.SetFocus;
            exit;
          end;

          result:= true;

end;

end.
