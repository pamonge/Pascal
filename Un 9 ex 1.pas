Program consOrden;
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
  randomize;
  {WriteLn('Arreglo sin ordenar:');}
  For i:= 1 to length(vec) do
  Begin
    vec[i]:= random(100);
    {Write(vec[i], ' ');}
  end;
  i:=1;
  bandera:= false;
  aux:= vec[1];
  For i:=2 to length(vec) do
  Begin
    if (aux < vec[i]) then
    Begin
      aux:= vec[i];
      bandera:= true
    end
    else
    Begin
      bandera:= false
    end;
  end;
  if bandera = true then WriteLn('Arreglo ordenado');
  if bandera = false then WriteLn('Arreglo desordenado');
end. 