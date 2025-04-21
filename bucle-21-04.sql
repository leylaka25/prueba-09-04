--VAMOS A MOSTRAR LA SUMA DE LOS PRIMEROS 100 NUMEROS
--1) LOOP..END LOOP
DECLARE
--variables contador suelen denominarse
--con una sola letra: i, z, k
i int;
suma int;
BEGIN
     -- debemos iniciar i, sino sera null
    i := 1;
     --inicializamos suma
    suma := 0;
    LOOP
        ---instrucciones
        suma:= suma + i;
        ---incrementamos la variable i 
        i := i + 1;
        --debemmos indicar cuando queemos el bucle finalice
        exit when i > 100;
    end loop;
    dbms_output.put_line('la suma de los primeros numeros es: ' || suma);
end;
     --2) WHILE..LOOP
     --LA CONDICION SE EVALUA ANTES DE ENTRAR
declare
i int;
suma int;
begin
     --debemos iniciar las variables
     1 := 1;
     suma := 0;
     while i <= 100 loop
     --instrucciones
     suma := suma + i;
     i := i + 1;
    end loop;
    dbms_output.put_line('la suma de los 100 primeros numeros es: ' || suma);
end;

--3) BUCLE FOR..LOOP (CONTADOR)
--CUANDO SABEMOS EL INICIO Y EL FINAL
declare
    suma int;
begin
    suma := 0;
    for i in 1..100 loop
        suma := suma + i;
    end loop;   
    dbms_output.put_line('la suma de los 100 primeros numeros es: ' || suma);
end;    
--CUANDO SABEMOS EL INICIO Y EL FINAL
--4) ETIQUETAS GO TO
declare
    suma int;
begin
    suma := 0;
    dbms_output.put_line('Inicio');
    dbms_output.put_line('Antes del bucle');
    for contador in 1..1000 loop
        suma := suma + contador;
    end loop; 
    <<codigo>>
    dbms_output.put_line('Despues del bucle'); 
    dbms_output.put_line('la suma de los 100 primeros numeros es: ' || suma);
end;    
--5) ORDEN NULL
declare
    i int;
begin
    --debemos iniciar las variables
    i := 1;
    if (i >= 1) then
        dbms_output.put_line('i es mayor a 1');
    else
        null;
    end if;
end;

---EJEMPLOS
--BUCLE PARA MOSTRAR LOS NUMEROS ENTRE 1 Y 10
--1) BUCLE WHILE
declare
    i int;
begin
    i := 1;
    while i <= 10 loop
        dbms_output.put_line(i);
        i := i + 1;
        end loop;
        dbms_output.put_line('Fin de bucle while')
end;

--2) BUCLE FOR
declare
    i int;
begin
    for i in 1..10 loop
        dbms_output.put_line(i);
        end loop;
        dbms_output.put_line('Fin de bucle for')
end;

--PEDIR AL USUARIO UN NUMERO INICIO &inicio
--Y UN NUMERO FINAL
--MOSTRAR LOS NUMEROS COMPRENDIDOS ENTRE DICHO RANGO
-- SI EL NUMERO INICIAL ES MAYOR, LO INDICAMOS Y NO HACEMOS EL BUCLE
declare inicio int;
        fin int;
begin
    inicio := &inicial;
    fin := &final;
    --preguntamos por los valores de los numeros
    if (inicio >= fin) then
        dbms_output.put_line('El numero de inicio(' || inicio ||') debe ser menor de fin ('|| fin || ' )');
    else
       for i in inicio..fin loop
           dbms_output.put_line(i);
       end loop;
    end if;   
        dbms_output.put_line('fin de programa');
end;
undefine inicial;
undefine final;


--QUEREMOS UN BUCLE PIDIENDO UN INICIO Y UN FIN
--MOSTRAR LOS NUMEROS PARES COMPRENDIDOS ENTRE DICHO INICIO Y FIN
