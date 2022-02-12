set serveroutput on;
-- En este codigo lo que se solicita es recorrer un Array
-- Y mandar a imprimir un promedio con los valores de este Arry
declare
--Creo mi Array
type notasArray is varray(4) of number;    
notas notasArray := notasArray(95,60,75,85);    
--Creo mi variable promedio
promedio number(6,2) := 0;
begin
    --Inicio mi ciclo FOR
    for i in 1..4 loop
    promedio := promedio + notas(i);
    end loop;

 dbms_output.put_line('Promedio es: ' || promedio/4 );
 --Imprimo en consola el promedio
 end;
 
