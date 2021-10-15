unit u_config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Tf_config = class(TForm)
    Label1: TLabel;
    edit_server: TEdit;
    b_salvar: TBitBtn;
    procedure b_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_config: Tf_config;

implementation

{$R *.dfm}

uses u_dm;

procedure Tf_config.b_salvarClick(Sender: TObject);
begin

  //dm.FDConnection1.Params.

end;

end.
