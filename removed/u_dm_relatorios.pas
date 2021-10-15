unit u_dm_relatorios;

interface

uses
  System.SysUtils, System.Classes;

type
  Tdm_relatorios = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_relatorios: Tdm_relatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
