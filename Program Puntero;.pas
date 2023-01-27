Program Puntero;
Uses CRT;
type
    Str10 = string [10];
    TipoPtro = ^integer;
    tReg = record
        nombre: Str10;
        Edad: byte;
    end;
    TPtroReg = ^tReg;
    TVec = array[1..5] of char;
    TPtroVec = ^tVec;
var
    p, y:TipoPtro;
    z: TPtroReg;
    v: TPtroVec;
    i: byte;
begin
    ClrScr;
    new (p); // Se crea un puntero p
    p^:= 10; // Se le asigna un valor a ese puntero
    WriteLn ('El cotenido de p es: ', p^);
    WriteLn;
    inc (p^, 10); // Se incrementa en 10 el puntero
    WriteLn ('El nuevo contenido de p es: ', p^);
    WriteLn;
    ReadKey;
    new (y); // Se crea el puntero y
    y^:= 10; // Se le asigna un valor a y
    if (p^ = y^) then begin 
        WriteLn ('Los valores de y^ y p^ son iguales');
    end else begin
        WriteLn ('Los valores de y^ y p^ son distintos');
    end;
    WriteLn;
    ReadKey;
    dec (p^, 10); // Decrese en contenido de p en 10
    if (p = y) then begin // en esta comparacion no se compara el contenido sino el espacio de memoria al cual hace referencia.
        WriteLn ('Las referencias de memoria son las mismas.');
    end else begin
        WriteLn ('Las referancias de memoria son diferentes');
    end;
    WriteLn;
    ReadKey;
    y := p; // Se asigna la misma direccion de memoria de p a y
    if (p = y) then begin
        WriteLn ('Las referencias de memoria son las mismas.');
    end else begin
        WriteLn ('Las referencias de memoria son distintas.');
    end;
    WriteLn;
    ReadKey;
    new (z);
    z^.nombre := 'Pablo';
    z^.Edad := 37;
    WriteLn ('El nombre es: ', z^.nombre, ' y la edad es: ', z^.edad);
    WriteLn;
    new (v);
    for i := 1 to 5 do begin
        v^[i] := chr (i);
    end;
    For i := 1 to 5 do begin
        WriteLn (v^[i]);
    end;
    ReadKey;
    Dispose (p);
    Dispose (y);
    Dispose (z);
end.