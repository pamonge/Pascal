Program pilaEstatica;
Uses CRT;
var
    datos: array [1..10] of integer;
    cima : integer;
    n : integer;
{---------------------------- Inicio de Pila ----------------------------}
Procedure inicializarPila;
begin
    cima := 0;
end;
{---------------------------- Apilado de datos ----------------------------}
Procedure Apilar (nuevoDato : integer);
begin   
    cima := cima + 1;
    datos [cima] := nuevoDato;
end;
{---------------------------- Función Desapilar ----------------------------}
Function Desapilar: integer;
begin
    Desapilar := datos [cima];
    cima := cima - 1;
end;
{----------------------- Función de cantidad de datos -----------------------}
Function cantidadDatos : integer;
begin 
    cantidadDatos := cima;
end;
{---------------------------- Programa de Prueba ----------------------------}
begin
    inicializarPila;
    WriteLn ('Guardando 3 y 2...');
    Apilar(3);
    Apilar(2);
    WriteLn ('Los datos eran:');
    WriteLn (Desapilar);
    WriteLn (Desapilar);
    WriteLn ('Ahora introduce datos, 0 para terminar...');
    repeat
        Write ('Dato? ');
        ReadLn (n);
        if n <> 0 then begin
            Apilar (n);
        end;
    until n = 0;
    WriteLn ('Los datos eran: ');
    While cantidadDatos > 0 do begin
        WriteLn (Desapilar);
    end;
end.