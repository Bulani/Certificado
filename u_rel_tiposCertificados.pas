unit u_rel_tiposCertificados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLXLSFilter, RLFilters, RLPDFFilter,
  RLReport, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLXLSXFilter;

type
  Tf_rel_tiposCertificados = class(TForm)
    RLReport1: TRLReport;
    RLPDFFilter1: TRLPDFFilter;
    q_tipos: TFDQuery;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    ds_dados: TDataSource;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    q_tiposcod_tipo: TFDAutoIncField;
    q_tipostipo: TStringField;
    q_tiposvalidade: TStringField;
    q_tiposdescricao: TStringField;
    q_tiposvalor: TBCDField;
    RLXLSXFilter1: TRLXLSXFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_rel_tiposCertificados: Tf_rel_tiposCertificados;

implementation

{$R *.dfm}

uses u_dm;

end.
