Program PilaUn8;
Uses CRT;
type
    Puntero = ^Caracter;
    Caracter = record   
        Cont : char;
        Sgte : Puntero;
    end;
var
    nuevo : char;
    Pila : Puntero;
    ContDatos : Integer;
    i : Integer;
{--------------------- Inicializar Pila --------------------}
Procedure IniPila;
begin
    Pila := nil;
    ContDatos := 0;
end;
{--------------- Procedimiento Encabezado -----------------}
Procedure Encabezado;
begin
    gotoxy (60, 40);
    TextColor (2);
    WriteLn ('------------------------------');
    gotoxy (60, 40);
    WriteLn ('|      Programa de Lista     |');
    gotoxy (60, 40);
    WriteLn ('------------------------------');
    TextColor (7);
end;
{----------------- Procedimiento Apilar -------------------}
Procedure Apilar (n : char);
var 
    nn : Puntero;
begin
    new (nn);
    nn^.Cont := n;
    nn^.Sgte := Pila;
    Pila := nn;
    ContDatos := ContDatos + 1;
end;
{------------------- Funcion Desapilar -------------------}
Function Desapilar : char;
var
    nCima : Puntero;
begin
    Desapilar := Pila^.Cont;
    nCima := Pila^.Sgte;
    Dispose (Pila);
    Pila := nCima;
    ContDatos := ContDatos - 1;
end;
{-------------- Funcion de Cantidad de Dotos ---------------}
Function conteoDatos : Integer;
begin
    conteoDatos := ContDatos
end;
{------------------------ Programa -------------------------}
begin
    ClrScr;
    IniPila;
    Encabezado;
    WriteLn ('Ingrese la letra, deje sin insetar dato para terminar: ');
    repeat
        Write ('Letra?: ');
        read (nuevo);
        if nuevo <> ' ' then begin
            Apilar (nuevo);
        end;
    until nuevo <> ' ';
    WriteLn ('Los datos ingresados fueron: ');
    for i := 0 to conteoDatos do begin
        Write (Desapilar, ' ');
    end;
    ReadKey;
end.    