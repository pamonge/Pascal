Program negocio;
Uses Crt;
Type
  tproduc= record;
    producto: string;
    marca: string;
    tamaño: real;
    precio: real;
    unidad: integer;
  end;
  produc= array [1..numProduc] of tproduc;
Var
  prod: produc;
  numProduc: integer;