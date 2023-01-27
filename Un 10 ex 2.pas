Program matriz2;
Uses Crt;
Type
  mat= array[1..3, 1..3] of integer;
Var
  matriz: mat;
  x, y: integer;
Begin
  Clrscr;
  WriteLn('El siguiente programa realizará un producto de matriz');
  WriteLn();
  matriz[1,1]:= 4;
  matriz[2,1]:= 6;
  matriz[3,1]:= 5;
  matriz[1,2]:= 7;
  matriz[2,2]:= 9;
  matriz[3,2]:= 0;
  matriz[1,3]:= 8;
  matriz[2,3]:= 1;
  matriz[3,3]:= 3;
  for x:= 1 to 3 do
  Begin
    for y:= 1 to 3 do
    Begin
      Write(matriz[x,y], ' ');
    end;
    WriteLn();
  end;
  WriteLn();
  ReadKey;
  WriteLn('Se multiplicará por 2 a los numeros dentro de la matriz especificada: ');
  WriteLn();
  for x:= 1 to 3 do
  Begin
    for y:= 1 to 3 do
    Begin
      matriz[x,y]:= matriz[x,y] * 2;
      Write(matriz[x,y], ' ');
    end;
    WriteLn();
  end;
End.
