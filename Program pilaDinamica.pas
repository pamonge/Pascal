Program pilaDinamica;
Uses CRT;
type 
    puntero = ^nodo;
    nodo = record
        dato : integer;
        siguiente : puntero;
    end;
var
    cima : puntero;
    contadorDeDatos : integer;
{---------------------------- Inicio de Pila ----------------------------}
Procedure inicializarPila;
begin
    cima := nil;
    contadorDeDatos := 0
end;
{---------------------------- Apilado de datos ----------------------------}
Procedure Apilar (nuevoDato : integer);
var 
    nuevoNodo : puntero;
begin   
    new (nuevoNodo);               // Se reserva espacio para un nuevo nodo
    nuevoNodo^.dato := nuevoDato;  // Se guardan datos en el nuevo nodo 
    nuevoNodo^.siguiente := cima;  // Se lo pone en la sobre la cima actual.
    cima := nuevoNodo;             // Hacemos que este sea la nueva cima
    contadorDeDatos := contadorDeDatos + 1;  // Anotamos que se dispone de un dato mas
end;
{---------------------------- Función Desapilar ----------------------------}
Function Desapilar: integer;
var 
    nuevaCima : puntero;
begin
    Desapilar := cima^.dato;      // Se toma el dato de la cima
    nuevaCima := cima^.siguiente; // Anotamos el siguiente que sera la nueva cima
    dispose (cima);                 // Se libera la memoria reservada para el nodo 
    cima := nuevaCima;            // Se almacena la nueva cima
    contadorDeDatos := contadorDeDatos - 1;
end;
{----------------------- Función de cantidad de datos -----------------------}
Function cantidadDatos : integer;
begin 
    cantidadDatos := contadorDeDatos;
end;
{---------------------------- Programa de Prueba ----------------------------}
var
    n : integer;
begin
    InicializarPila;
    WriteLn ('Guardando 3 y 2...');
    Apilar (3);
    Apilar (2);
    WriteLn ('Los datos eran: ');
    WriteLn (Desapilar);
    WriteLn (Desapilar);
    WriteLn ('Ahora introduce datos, 0 para terminar. ');
    repeat
        Write ('Dato? ');
        ReadLn (n);
        if n <> 0 then begin
            Apilar (n);
        end;
    until n = 0;
    WriteLn ('Los datos eran: ');
    While contadorDeDatos <> 0 do begin
        WriteLn (Desapilar);
    end;
end.
