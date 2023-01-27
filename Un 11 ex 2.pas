Program data;
Uses Crt;
Type
  tDatos= record
    nombre: string;
    sexo: char;
    edad: integer;
    peso: integer;
    colPel: string;
    colPiel: string;
    colOjos: string;
    nac: string;
    tel: integer;
  end;
  datos= array [1..10] of tDatos;
Label
  uno;
Var
  datPers: datos;
  nom: string;
  sex: char;
  anos: integer;
  pes: integer;
  col_pel:string;
  col_piel: string;
  col_ojos: string;
  lnac: string;
  ntel: integer;
  i, indice, ref, contador, resta: integer;
{---------------------------------------PROCEDIMIENTO---------------------------------------------}
Procedure encabezado;
Begin
  Textcolor(2);
  WriteLn(' ': 25, '--------------------');
  WriteLn(' ': 26, 'DATOS DEL PERSONAL');
  WriteLn(' ': 25, '--------------------');
  Textcolor(7);
End;
{-----------------------------------------PROGRAMA-------------------------------------------------}
Begin
  contador:= 0;
  uno:
  clrscr;
  encabezado;
  WriteLn;
  WriteLn('Bienvenido...');
  WriteLn;
  WriteLn('Que desea hacer?...'); 
  WriteLn('Precione 1 para ingresar un nuevo registro.');
  WriteLn('Precione 2 para buscar un registro.');
  WriteLn('Precione 3 para editar un registro.');
  WriteLn('Precione 4 para salir.');
  Write('>>>>>> '); Read(ref);
  Case ref of
    1:Begin
        Clrscr;
        encabezado;
        If (contador < 10) then
        Begin
          resta:= 10 - contador;
          WriteLn('Ud dispone de ', resta, ' de lugares disponibles para almacenar.');
          WriteLn;
          WriteLn('Ingrese la cantidad de personas que desea agregar: '); ReadLn(indice);
          While indice > resta do
          Begin
            Textcolor(4);
            Write('Ingrese un numero valido: '); Textcolor(7); ReadLn(indice);
          end;
          WriteLn('A continuación deberá ingresar los datos del personal:');
          WriteLn;
          For i:= contador + 1 to indice do
          Begin
            WriteLn('------- Ingrese los datos de la ', i, ' persona -------');
            Write('> Ingrese el nombre: '); ReadLn(nom); 
            Write('> Ingrese el sexo, especificando unicamente la inicial: '); ReadLn(sex);
            Write('> Ingrese la edad: '); ReadLn(anos);
            Write('> Ingrese el peso de la persona: '); ReadLn(pes);
            Write('> Ingrese el color de pelo: '); ReadLn(col_pel);
            Write('> Ingrese el color de piel: '); ReadLn(col_piel);
            Write('> Ingrese el color de ojos: '); ReadLn(col_ojos);
            Write('> Ingrese la nacionlidad: '); ReadLn(lnac);
            Write('> Ingrese el numero de telefono: '); ReadLn(ntel);
            With datPers[i] do 
            Begin
              nombre:= nom;
              sexo:= sex;
              edad:= anos;
              peso:= pes;
              colPel:= col_pel;
              colPiel:= col_piel;
              colOjos:= col_ojos;
              nac:= lnac;
              tel:= ntel;
            end;
            inc(contador);
          end;
          GoTo uno;
        end
        else
        Begin
          clrscr;
          encabezado;
          WriteLn;
          Textcolor(4);
          WriteLn('¡¡¡¡¡NO DISPONE DE ESPACIO SUFICIENTE PARA ALMACENAR!!!!!');
          Textcolor(7);
          GoTo uno;
        end;
      end;
    2:Begin
        Clrscr;
        encabezado;
        WriteLn;
        WriteLn('Indice de personas');
        WriteLn('-------------------');
        Write('Ingrese el numero de la persona que busca: '); ReadLn(indice);
        While indice > 10 do
        Begin
          Textcolor(4);
          Write('Ingrese un valor valido: '); Textcolor(7); ReadLn(indice);
        end;
        With datPers[indice] do
        Begin
          WriteLn('> Nombre: ', nom);
          WriteLn('> Sexo: ', sex);
          WriteLn('> Edad: ', anos);
          WriteLn('> Peso: ', pes);
          WriteLn('> Color de pelo: ', col_pel);
          WriteLn('> Color de piel: ', col_piel);
          WriteLn('> Color de ojos: ', col_ojos);
          WriteLn('> Nacionalidad: ', lnac);
          WriteLn('> Numero de telefono: ', ntel);
        end;
        ReadKey;
        GoTo uno;
      end;
    3:Begin
        Clrscr;
        encabezado;
        WriteLn;
        Write('Ingrese el Numero de orden de la persona que desea editar: '); ReadLn(indice); 
        While indice > 10 do
        Begin
          Textcolor(4);
          Write('Ingrese un valor valido: '); Textcolor(7); ReadLn(indice);
        end;
        Write('> Ingrese el nombre: '); ReadLn(nom); 
        Write('> Ingrese el sexo, especificando unicamente la inicial: '); ReadLn(sex);
        Write('> Ingrese la edad: '); ReadLn(anos);
        Write('> Ingrese el peso de la persona: '); ReadLn(pes);
        Write('> Ingrese el color de pelo: '); ReadLn(col_pel);
        Write('> Ingrese el color de piel: '); ReadLn(col_piel);
        Write('> Ingrese el color de ojos: '); ReadLn(col_ojos);
        Write('> Ingrese la nacionlidad: '); ReadLn(lnac);
        Write('> Ingrese el numero de telefono: '); ReadLn(ntel);
        With datPers[i] do 
        Begin
          nombre:= nom;
          sexo:= sex;
          edad:= anos;
          peso:= pes;
          colPel:= col_pel;
          colPiel:= col_piel;
          colOjos:= col_ojos;
          nac:= lnac;
          tel:= ntel;
        end;
        ReadKey;
        GoTo uno;
      end;
    4:Begin
        exit
      end;
    else
      Begin
        Textcolor(4);
        WriteLn('Ingrese una opción válida...');
        Textcolor(7);
        ReadKey;
        Goto uno;
      end;
  end;
End.