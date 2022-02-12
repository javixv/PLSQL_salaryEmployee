set serveroutput on;

DECLARE

--Create my variable of type Array
TYPE myArray is VARRAY(4) OF NUMBER; 
-- assign values to my array
a_numbers myArray := myArray(5,6,7,8);

BEGIN
-- Print the values
  FOR i IN 1..4
  LOOP
    dbms_output.put_line('Value is: ' || a_numbers(i) );
  END LOOP;
 
 END;
