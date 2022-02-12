set SERVEROUTPUT on;

declare
-- Create my variable of type VARRAY
type alumnoArray is VARRAY(5) of nvarchar2(100);

alumno alumnoArray;
begin
-- assign values to my array
alumno := alumnoArray('Javier','Fernando','Jimena','Karla','Clarissa');
-- Print the values
dbms_output.put_line(alumno(5));

end;
