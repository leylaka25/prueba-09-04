--DEBEMOS COMPROBAR SI UN NUMERO ES POSITIVO O NEGATIVO
DECLARE
    v_numero int;
Begin
--pedimos el numero al usuario
    v_numero := &numero;
--preguntamos por el propio numero
    if (V_NUMERO >=0) then
        dbms_output.put_line('Positivo: ' || v_numero);
    else
        dbms_output.put_line('Negativo: ' || v_numero);
    end if;
    dbms_output.put_line('Fin de programa');
end;

undefine numero;

---2- --DEBEMOS COMPROBAR SI UN NUMERO ES POSITIVO O NEGATIVO o cero
declare
    v_numero int;
begin
    v_numero := &numero;       
    if (v_numero > 0) then
        dbms_output.put_line('Es positivo... ' || v_numero);
    elsif (v_numero = 0) then
        dbms_output.put_line('Es cero!!! ' || v_numero);
    else
        dbms_output.put_line('Es negativo!!! ' || v_numero);
    end if;
        dbms_output.put_line('Fin de programa 2');
end;

--EJEMPLO DE ESTACIONES ANUALES--
declare
    v_estacion int;
begin 
    v_estacion := &estacion;
    if (v_estacion =1) THEN
        dbms_output.put_line('Primavera');
    elsif (v_estacion = 2) THEN
    dbms_output.put_line('Verano');
    elsif (v_estacion = 3) THEN
    dbms_output.put_line('Otoño');
    elsif (v_estacion = 4) THEN
    dbms_output.put_line('Invierno');
    ELSE
    dbms_output.put_line('Valor incorrecto' || v_estacion);
    end if;
    dbms_output.put_line('Fin de programa');
    end;

---EJEMPLO NUMERO MAYOR---
--Pediremos dos numeros al usuario y debemos devolver que numero es mayor---

DECLARE
v_num1 int;
v_num2 int;
begin
    v_num1 := &num1; 
    v_num2 := &num2; 
if (v_num1 > v_num2) THEN
        dbms_output.put_line('Numero mayor' || v_num1);
else
    dbms_output.put_line('Numero mayor' || v_num2);
end if;
    dbms_output.put_line('Fin de programa');
end;

---QUE ES LO QUE NO SE---

SELECT MOD(28,2) AS RESTO FROM DUAL;

----Pediremos un numero al usuario y indicar si es  par o impar 

declare
   v_num int;
begin
   v_num :=&numo1;
IF (MOD(v_num, 2) = 0) THEN
      DBMS_OUTPUT.PUT_LINE('El número ' || v_num || ' es par.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('El número ' || v_num || ' es impar.');
   END IF;
END;
undefine numero;
--por supuesto, podemos perfectamente utilizar cualquier
--operador, tanto de comparacion, como relacional en nuestros codigos--
--Pedir una letra al usuario.
--si la letra es vocal ( a,e,i,o,u)
--pintamos vocal, sino, consonante
/
declare
   v_letra varchar2(1);
begin
   v_letra := lower ('&letra');
   if (v_letra = 'a' or v_letra = 'e' or v_letra ='i' 
   or v_letra = 'o' or v_letra = 'u')then
   dbms_output.put_line ('Vocal' || v_letra);
   else
   dbms_output.put_line ('Consonante' || v_letra);
end if;
 
 dbms_output.put_line ('Vocal' || v_letra);
end;
/
--pedir 3 numeros al usario y debemos mostrar el mayor de ellos y el menor de ellos.
/
declare
v_num1 int;
v_num2 int;
v_num3 int;
v_mayor int;
v_menor int;
v_intermedio int;
v_suma int;
begin
    v_num1 := &numo1 
    v_num2 := &numo2
    v_num3 := &numo3
if (v_num1 >= v_num2 and v_num1 >= v_num3) then v_mayor := v_num1;

elsif 
   (v_num2>= v_num1 and v_num2 >= v_num3) then v_mayor := v_num2;
else 
  (v_mayor := v_num3;)
end if;
v_suma := v_num1 + v_num2 + v_num3;
v_intermedio := v_suma - v_mayor - v_menor;

    dbms_output.put_line('Mayor' || v_mayor);
    dbms_output.put_line('Menor' || v_menor);
    dbms_output.put_line('Intermedio' || v_intermedio);
end;
/
undefine num1;
undefine num2;
undefine num3;
/

/
DECLARE
   v_num1 NUMBER;
   v_num2 NUMBER;
   v_num3 NUMBER;
   v_mayor NUMBER;
   v_menor NUMBER;
BEGIN
   -- Solicitar los tres números al usuario
   DBMS_OUTPUT.PUT_LINE('Introduce el primer número:');
   v_num1 := &num1;

   DBMS_OUTPUT.PUT_LINE('Introduce el segundo número:');
   v_num2 := &num2;

   DBMS_OUTPUT.PUT_LINE('Introduce el tercer número:');
   v_num3 := &num3;

   -- Encontrar el mayor de los tres números
   IF v_num1 >= v_num2 AND v_num1 >= v_num3 THEN
      v_mayor := v_num1;
   ELSIF v_num2 >= v_num1 AND v_num2 >= v_num3 THEN
      v_mayor := v_num2;
   ELSE
      v_mayor := v_num3;
   END IF;

   -- Encontrar el menor de los tres números
   IF v_num1 <= v_num2 AND v_num1 <= v_num3 THEN
      v_menor := v_num1;
   ELSIF v_num2 <= v_num1 AND v_num2 <= v_num3 THEN
      v_menor := v_num2;
   ELSE
      v_menor := v_num3;
   END IF;

   -- Mostrar los resultados
   DBMS_OUTPUT.PUT_LINE('El número mayor es: ' || v_mayor);
   DBMS_OUTPUT.PUT_LINE('El número menor es: ' || v_menor);
END;
/