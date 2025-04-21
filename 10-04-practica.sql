----1--crear un bloque anónimo que sume dos números introducidos por teclado y muestre el resultado por pantalla.
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
---2--Insertar en la tabla EMP un empleado con código 9999 
--asignado directamente en la variable con %TYPE, apellido ‘PEREZ’, oficio ‘ANALISTA’ y código del departamento al que pertenece 10.

--3--Incrementar el salario en la tabla EMP 
--en 200 EUROS a todos los trabajadores que sean ‘ANALISTA’, mediante un bloque anónimo PL, asignando dicho valor a una variable declarada con %TYPE.

declare
--declaremos una variable para almanecer el numero de departamento
v_departamento int;
begin
--pedimos un numero al usuario
    v_departamento :=&dept;
    update EMP set salario = salario + 1 where DEPT_NO = v_departamento;
end;
undefine DEPT;

DECLARE
   v_departamento int
   Begin 
   v_departamento := EMP.SALARIO%TYPE := 200; -- Declaramos la variable con %TYPE
BEGIN
   UPDATE EMP
   SET SALARIO = SALARIO + v_increment
   WHERE OFICIO = 'ANALISTA';

   COMMIT; -- Confirmamos los cambios en la base de datos
END;