select * from DEPT;
---BLOQUE PARA INSERTAR UN DEPARTAMETO---
declare
     v_numero emp.emp_no%type;
     v_apellido emp.apellido%type;
     v_oficio emp.oficio%type;
begin
   v_numero := &numero_emp;
   v_apellido := '&apellido';
   v_oficio := '&oficio';
   insert into EMP (EMP_NO, APELLIDO, OFICIO) values (v_numero, v_apellido, v_oficio);
end;
undefine numero;
undefine nombre;
undefine oficio;
select * from EMP;

ROLLBACK;

-- Incrementar el salario en la tabla EMP en 200 EUROS a todos los trabajadores que sean ‘ANALISTA’,
-- mediante un bloque anónimo PL, asignando dicho valor a una variable declarada con %TYPE.
select * from EMP;

DECLARE
	V_INCREMENTO EMP.SALARIO%TYPE := 200;
BEGIN
	UPDATE EMP
	SET SALARIO = SALARIO + V_INCREMENTO
	WHERE OFICIO = ‘ANALISTA’;
COMMIT;

END;
