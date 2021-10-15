unit u_pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_pesquisa = class(TForm)
    Bevel1: TBevel;
    edit_pesq: TEdit;
    Label1: TLabel;
    Bevel2: TBevel;
    btnOk: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    ds_dados: TDataSource;
    q_dados: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edit_pesqChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure mostrar_dados;
  public
    { Public declarations }
    tabela, codigo, campo1, campo2 : string;
    rotulo_codigo, rotulo_c1, rotulo_c2 : string;

    largura_codigo, largura_c1, largura_c2 : real;
  end;

var
  frm_pesquisa: Tfrm_pesquisa;

implementation

{$R *.dfm}


procedure Tfrm_pesquisa.btnOkClick(Sender: TObject);
begin
     if q_dados.IsEmpty then
     begin
          ShowMessage('N�o h� um registro selecionado !');
          exit;
     end;

     // fecha o formul�rio
     modalresult:= mrOk;
end;

procedure Tfrm_pesquisa.DBGrid1DblClick(Sender: TObject);
begin
     btnOK.OnClick(btnOK);
end;

procedure Tfrm_pesquisa.edit_pesqChange(Sender: TObject);
begin
     mostrar_dados;
end;

procedure Tfrm_pesquisa.FormShow(Sender: TObject);
begin
     DBGrid1.Columns.Clear;

     DBGrid1.Columns.Add;
     DBGrid1.Columns[0].FieldName:= codigo;
     DBGrid1.Columns[0].Title.Caption:= rotulo_codigo;
     DBGrid1.Columns[0].Width:= Trunc(largura_codigo * DBGrid1.Width);
     DBGrid1.Columns[0].Alignment:= taCenter;
     DBGrid1.Columns[0].Title.Alignment:= taCenter;

     DBGrid1.Columns.Add;
     DBGrid1.Columns[1].FieldName:= campo1;
     DBGrid1.Columns[1].Title.Caption:= rotulo_c1;
     DBGrid1.Columns[1].Width:= Trunc(largura_c1 * DBGrid1.Width);

     if campo2 <> '' then
     begin
          DBGrid1.Columns.Add;
          DBGrid1.Columns[2].FieldName:= campo2;
          DBGrid1.Columns[2].Title.Caption:= rotulo_c2;
          DBGrid1.Columns[2].Width:= Trunc(largura_c2 * DBGrid1.Width);
     end;


     mostrar_dados;
end;

procedure Tfrm_pesquisa.mostrar_dados;
begin
     q_dados.SQL.Clear;
     q_dados.SQL.add(' select ');
     q_dados.SQL.add(codigo + ', ');
     q_dados.SQL.add(campo1 + '  ');

     if campo2 <> '' then
     begin
          q_dados.SQL.add(',' + campo2 );
     end;

     q_dados.sql.Add('from ' + tabela);
     q_dados.SQL.add('where ' + campo1 + ' like ' + QuotedStr('%'+edit_pesq.Text+'%') + ' ' );
     q_dados.sql.Add('order by ' + campo1 );

     q_dados.open;
end;

end.
