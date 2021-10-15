unit funcoes;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, System.UITypes;

Function valida_cpf(cpf:string):boolean;
function isCNPJ(CNPJ: string): boolean;
Function  is_Inteiro( n : string) : boolean;
Function  RealUSA(x:string) : string;
Function  Is_Date(Data : string) : Boolean;
Function  Is_DateTime(Data : string) : Boolean;
Function  is_Real( n : string) : boolean;
function DataUSA( d : string ) : string;
function DataBR( d : string ) : string;
function Remove(str: string):string;
function DataOk(Dt:String):Boolean;
procedure apresentar_msg( s : string );

var
   usuario : record
                   nome,
                   login : string;
                   administrador : boolean;
             end;


implementation

//------------------------------------------------------------------------------
Function valida_cpf(cpf:string):boolean;
var i:integer;
    Want:char;
    Wvalid:boolean;
    Wdigit1,Wdigit2:integer;
begin
     Wvalid:= false;

     cpf:= trim(cpf);

     if cpf = '' then
     begin
          result:= false;
          exit;
     end;

    Wdigit1:=0;
    Wdigit2:=0;
    Want:=cpf[1];//variavel para testar se o cpf é repetido como 111.111.111-11
    Delete(cpf,ansipos('.',cpf),1);  //retira as mascaras se houver
    Delete(cpf,ansipos('.',cpf),1);
    Delete(cpf,ansipos('-',cpf),1);

     if length(cpf) <> 11  then
     begin
          result:= false;
          exit;
     end;


   //testar se o cpf é repetido como 111.111.111-11
   for i:=1 to length(cpf) do
     begin
       if cpf[i] <> Want then
         begin
            Wvalid:=true;  // se o cpf possui um digito diferente ele passou no primeiro teste
            break
         end;
     end;
       // se o cpf é composto por numeros repetido retorna falso
     if not Wvalid then
       begin
          result:=false;
          exit;
       end;

     //executa o calculo para o primeiro verificador
     for i:=1 to 9 do
       begin
          wdigit1:=Wdigit1+(strtoint(cpf[10-i])*(I+1));
       end;
        Wdigit1:= ((11 - (Wdigit1 mod 11))mod 11) mod 10;
        {formula do primeiro verificador
            soma=1°*2+2°*3+3°*4.. até 9°*10
            digito1 = 11 - soma mod 11
            se digito > 10 digito1 =0
          }

         //verifica se o 1° digito confere
        if IntToStr(Wdigit1) <> cpf[10] then
          begin
             result:=false;
             exit;
          end;


         for i:=1 to 10 do
       begin
          wdigit2:=Wdigit2+(strtoint(cpf[11-i])*(I+1));
       end;
       Wdigit2:= ((11 - (Wdigit2 mod 11))mod 11) mod 10;
         {formula do segundo verificador
            soma=1°*2+2°*3+3°*4.. até 10°*11
            digito1 = 11 - soma mod 11
            se digito > 10 digito1 =0
          }

       // confere o 2° digito verificador
       if IntToStr(Wdigit2) <> cpf[11] then
          begin
             result:=false;
             exit;
          end;

   //se chegar até aqui o cpf é valido
   result:=true;
   
end; // valida cpf
(* *)

//------------------------------------------------------------------------------
Function  is_Inteiro( n : string) : boolean;
var
   code : integer;
   x : integer;
begin
     // tenta converter
     val(n, x, code);
     result:= code = 0;          
end;

//------------------------------------------------------------------------------
procedure apresentar_msg( s : string );
begin
     MessageDlg(s,mtInformation,[mbok],0);
end;


//------------------------------------------------------------------------------
function DataBR( d : string ) : string;
var
   data_nova : string;
begin
     // 2012/05/07
     data_nova:= copy(d, 1,2)+'/' + copy(d,4,2) +'/'+ copy(d,7,4);

     result:= data_nova;

end;

//------------------------------------------------------------------------------
function DataUSA( d : string ) : string;
var
   data_nova : string;
begin
     // 23/04/2012
     data_nova:= copy(d,7,4) + '/' + copy(d,4,2) + '/' + copy(d, 1,2);
     //data_nova:= copy(d,4,2) + '/' + copy(d, 1,2) +'/'+ copy(d,7,4);

     result:= data_nova;

     //showmessage(result);
     //result:= d;

end;

//------------------------------------------------------------------------------
Function  Is_Date(Data : string) : Boolean;
begin
     try
        StrToDate(Data);
     Except
        on E:EConvertError do
        begin
             Result:= False;
             Exit;
        end
     end;
     Result:= True;
end;

//------------------------------------------------------------------------------
Function  Is_DateTime(Data : string) : Boolean;
begin
     try
        StrToDateTime(Data);
     Except
        on E:EConvertError do
        begin
             Result:= False;
             Exit;
        end
     end;
     Result:= True;
end;

//------------------------------------------------------------------------------
Function  RealUSA(x:string) : string;
var
   i : integer;
   n : string;
begin
     n:= x;
     Result:= '';
     for i:= 1 to length(n) do
     begin
          if n[i] = ',' then Result:= Result + '.'
          else
          if n[i] <> '.' then Result:= Result + n[i];
     end;
end;

//------------------------------------------------------------------------------
Function  is_Real( n : string) : boolean;
var
   code : integer;
   x : real;
   i : integer;
   n_novo : string;
begin
     // tira separador de milhares e substitui virgula por ponto
     n_novo:= '';
     for i:= 1 to length(n) do
     begin
          if n[i] = ',' then n_novo:= n_novo + '.'
          else
          if n[i] <> '.' then n_novo:= n_novo + n[i];
     end;

     // tenta converter
     val(n_novo, x, code);

     if code <> 0 then
     begin
          result:= false;
     end
     else begin
          result:= true;
     end;

end;

function Remove(str: string):string;
var
   x: integer;
   st: string;
begin
st:='';
for x:=1 to length(str) do
    begin
    if (str[x] <> '-') and
       (str[x] <> '.') and
       (str[x] <> ',') and
       (str[x] <> '/') then
    st:=st + str[x];
    end;
Remove:=st;
end;

function isCNPJ(CNPJ: string): boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin
// length - retorna o tamanho da string do CNPJ (CNPJ é um número formado por 14 dígitos)
  if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
      (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
      (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
      (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
      (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
      (length(CNPJ) <> 14))
     then begin
            isCNPJ := false;
            exit;
          end;

// "try" - protege o código para eventuais erros de conversão de tipo através da função "StrToInt"
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
// StrToInt converte o i-ésimo caractere do CNPJ em um número
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
       then isCNPJ := true
    else isCNPJ := false;
  except
    isCNPJ := false
  end;
end;

function DataOk(Dt:String):Boolean;
var
  Dia,Mes:Byte;
  Ano:Integer;
      function AnoBissesto(Year :Integer): boolean ;
      begin
         AnoBissesto:=(ano mod 4=0) and ( ano mod 100 <> 0) or (ano Mod 400 =0);
      end;
begin
 Result:=False;
 if length(Trim(Dt)) = 8 then
 begin
        Dia:=StrToIntDef(Copy(Dt,1,2),0);
        Mes:=StrToIntDef(Copy(Dt,4,2),0);
        Ano:=StrToInt(Copy(Dt,7,2));
        if ( (Mes in [1,3,5,7,8,10,12]) and (Dia in [1..31]) ) or
           ( (Mes in [4,6,9,11]) and (Dia in [1..30])        ) or
           ( (Mes = 2) and  (     AnoBissesto(Ano))  and  (Dia in [1..29]) )  or
           ( (Mes = 2) and  (not  AnoBissesto(Ano))  and  (Dia in [1..28]) )
        then
        Result:=True;
 end;
end;


end.
