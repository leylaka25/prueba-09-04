--    1. Mostrar todos los apellidos de los empleados en Mayúsculas

    a) Los apellidos en mayúscula.

select * from EMP;
select * from PLANTILLA;
SELECT UPPER(apellido) AS ApellidoMayusculas
FROM EMP;

--    2. Construir una consulta para que salga la fecha de hoy con el siguiente formato:
SELECT TO_CHAR(SYSDATE, 'Day DD "de" Month "de" YYYY', 'NLS_DATE_LANGUAGE=ITALIAN') AS "FECHA DE HOY"
FROM DUAL;
--    3. Queremos cambiar el departamento de Barcelona y llevarlo a Tabarnia.?????????????????????
Para ello tenemos que saber qué empleados cambiarían de localidad y cuáles no.  
Combinar tablas y mostrar el nombre del departamento junto a los datos del empleado.

SELECT DEPT.DNOMBRE AS DEPARTAMENTO
, EMP.APELLIDO, DEPT.LOC
, DECODE(DEPT.LOC, 'BARCELONA', 'A TABARNIA', 'NO CAMBIA DE LOCALIDAD') AS TRASLADO
FROM EMP
INNER JOIN DEPT
ON EMP.DEPT_NO = DEPT.DEPT_NO;



4--Mirar la fecha de alta del presidente. Visualizar todos los empleados dados de alta 330 días antes que el presidente. 
SELECT FECHA_ALT - 330 FROM EMP WHERE OFICIO = 'PRESIDENTE';

--Visualizar todos los empleados dados de alta 330 días antes que el presidente.
SELECT FECHA_ALT FROM EMP WHERE UPPER(OFICIO) = 'PRESIDENTE';
--17/11/1995
--TODOS LOS QUE SE DIERON DE ALTA 330 DIAS ANTES
--COMO RECUPERO UNA FECHA 330 DIAS ANTES?
SELECT SYSDATE - 330 FROM DUAL;
SELECT '17-11-1995' - 330 FROM DUAL;
--ESTA INTENTANDO RESTAR UN NUMERO DE OTRO, NO SABE QUE ES UNA FECHA
--CONVERTIR EL TEXTO '17/11/1995' DE FORMA EXPLICITA A FECHA
--COMO LO CONVERTIMOS???  TO_DATE
SELECT TO_DATE('17/11/1995') - 330 FROM DUAL;
SELECT * FROM EMP WHERE
FECHA_ALT > (TO_DATE('17/11/1995') - 330);
--SOLUCION CON SUBCONSULTA
SELECT * FROM EMP WHERE
FECHA_ALT > 
(SELECT FECHA_ALT - 330 FROM EMP
WHERE UPPER(OFICIO) = 'PRESIDENTE');

5--Nos piden un informe como este:
select APELLIDO, OFICIO, SALARIO, DEPT_NO FROM EMP;

SELECT RPAD(INITCAP(APELLIDO), 12, '.') AS INFORME
, RPAD(INITCAP(OFICIO), 12, '.') AS " "
, RPAD(SALARIO, 12, '.') AS " "
, RPAD(DEPT_NO, 5, '.') AS " "
 FROM EMP;

 ---7--Nos piden otro, en el que se muestren todos los empleados de la siguiente manera:
 SELECT 'El señor/a ' || INITCAP(APELLIDO)
|| ' con cargo de ' || INITCAP(OFICIO) 
|| ' se dio de alta el '
|| TO_CHAR(FECHA_ALT, 'day dd "de" month "de" yyyy')
|| ' en la empresa.' AS INFORME
FROM EMP;

--REALIZAR EL EJEMPLO CON CONCAT

SELECT CONCAT('El señor/a '
, CONCAT(APELLIDO
, CONCAT(' con cargo de ', OFICIO))) FROM EMP;