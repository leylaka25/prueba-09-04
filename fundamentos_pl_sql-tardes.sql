declare
---mi comentario--
--DECLARAMOS UNA VARIABLE
  numero int;
  texto varchar2(50);
begin
texto := 'mi primer PL/SQL';
    dbms_output.put_line ('Mensaje:'||texto )
    dbms_output.put_line('Mi primer bloque anónimo');
    numero := 44;
    dbms_output.put_line('Valor número:'|| numero);
    numero := 22;
    dbms_output.put_line('Valor número:'|| numero);
end;  



declare
    nombre varchar2(30);
begin
  nombre:= '&dato';
  dbms_output.put_line('Su nombre es' || nombre);
end;


declare
    fecha date;
    texto varchar2(50);
    longitud int;
begin
   fecha := SYSDATE;
   texto :='&data'
  --ALMACENAMOS LA LONGITUD DEL TEXTO
  longitud := LENGTH(texto);
  --LA LONGIITUD DE SU TEXTO ES 41
  dbms_output.put_line('la longitud del texto es' || longitud);
  --HOY ES ...MIERCOLES
  dbms_output.put_line('Hoy es ' || to_char(fecha, 'day'));
  dbms_output.put_line(texto);
end;


--realizar un programa donde pediremos dos numeros al usuario
--mostraremos por pantalla la suma 
declare
     numero1 int;
     numero2 int;
     suma int;
begin
  numero1 := &num111;
  numero2 := &num222;
  suma := numero1 + numero2;
  dbms_output.put_line ('La suma de:'|| numero1 
  || ' + ' || numero2 || '=' || suma); 
end;

declare
--declaremos una variable para almanecer el numero de departamento
v_departamento int;
begin
--pedimos un numero al usuario
    v_departamento :=&dept;
    update EMP set salario = salario + 1 where DEPT_NO = v_departamento;
end;
undefine DEPT;

---BLOQUE PARA INSERTAR UN DEPARTAMETO---
declare
     v_numero dept.dept_no%type;
     v_numero dept.dnombre%type;
     v_localidad dept.loc%type;
begin
   v_numero := &numero;
   v_numero := '&nombre';
   v_localidad := '&localidad';
   insert into DEPT values (v_numero, v_nombre, v_localidad);
end;
undefine numero;
undefine nombre;
undefine localidad;
select * from DEPT