program Certificados;

uses
  Vcl.Forms,
  u_principal in 'u_principal.pas' {frm_principal},
  u_pesquisa in 'u_pesquisa.pas' {frm_pesquisa},
  u_CadastroPadrao in 'u_CadastroPadrao.pas' {frm_CadastroPadrao},
  u_dm in 'u_dm.pas' {DM: TDataModule},
  u_CadastroPadraoCidadesJSON in 'u_CadastroPadraoCidadesJSON.pas' {frm_CadastroPadraoCidadesJSON},
  u_CadastroPadraoPessoas in 'u_CadastroPadraoPessoas.pas' {frm_CadastroPadraoPessoas},
  u_CadastroPadraoTiposCertificados in 'u_CadastroPadraoTiposCertificados.pas' {frm_CadastroPadraoTiposCertificados},
  u_CadastroPadraoCertificados in 'u_CadastroPadraoCertificados.pas' {frm_CadastroPadraoCertificados},
  u_config in 'u_config.pas' {f_config},
  u_rel_tiposCertificados in 'u_rel_tiposCertificados.pas' {f_rel_tiposCertificados},
  u_FiltroTiposCertificados in 'u_FiltroTiposCertificados.pas' {f_FiltroTiposCertificados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.Run;
end.
