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
select * from DEPT;

