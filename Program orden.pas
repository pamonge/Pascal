Program orden;
Uses CRT;
Type
  vector= array [1..100] of integer;
Var
  vec: vector;
  i: integer;
  z: integer;
  aux: integer;
  bandera: boolean;
Begin
  bandera:= true;
  randomize;
  WriteLn('Arreglo sin ordenar:');
  For i:= 1 to length(vec) do
  Begin
    vec[i]:= random(100);
    Write(vec[i], ' ');
  end;
  i:=1;
  For i:=1 to length(vec) do
  Begin
    for z:=1 to length(vec) do
    Begin
      If vec[z] > vec[z+1] then
      Begin
        aux:= vec[z];
        vec[z]:= vec[z+1];
        vec[z+1]:= aux;
      end;
    end;
  end;
  WriteLn();
  WriteLn('Arreglo ordenado');
  For i:= 1 to length(vec) do
  Begin
    Write(vec[i], ' ');
  end;
end. 