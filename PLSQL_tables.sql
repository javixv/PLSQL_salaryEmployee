set serveroutput on;
-- En este codigo lo que se solicita es recorrer un Array
-- Y mandar a imprimir un promedio con los valores de este Arry
declare
--Creo mi Array
type notasArray is TABLE OF NUMBER index by BINARY_INTEGER; 
notas notasArray;
pares notasArray;
arrayCount NUMBER;
--Creo mi variable promedio
begin
arrayCount := 0;
    --Inicio mi ciclo FOR
for i in 1..50 loop
    --promedio := promedio + notas(i);
    arrayCount := arrayCount + 2;
    notas(i) := arrayCount;
end loop;
FOR i IN 1..notas.COUNT
LOOP
 dbms_output.put_line('Value is: ' || notas(i) );
 --Imprimo en consola el promedio
 END LOOP;
 end;