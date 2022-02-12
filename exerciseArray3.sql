declare

-- Create my variable of type VARRAY
TYPE myArray IS VARRAY(5) OF NUMBER;

-- assign values to my array
-- it is necessary to always initialize the array
a_numbers myArray := myArray(0,0,0,0,0);

-- create 5 variable with numbers random
ran1 number := round(dbms_random.value(1,100));
ran2 number := round(dbms_random.value(1,100));
ran3 number := round(dbms_random.value(1,100));
ran4 number := round(dbms_random.value(1,50));
ran5 number := round(dbms_random.value(1,100));

begin
-- assign values with numbers random
a_numbers(1) := ran1;
a_numbers(2) := ran2;
a_numbers(3) := ran3;
a_numbers(4) := ran4;
a_numbers(5) := ran5;

-- Print the values
  FOR i IN 1..5
  LOOP
    dbms_output.put_line('Value is: ' || a_numbers(i) );
  END LOOP;
END;
