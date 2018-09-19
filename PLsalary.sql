set serveroutput on;

declare
-- se declara un variable tipo NUMBER que es el salario base
-- este salario tiene un rango de 600 a 2000 y se genera de forma dinamica con ROUND
salariob number := round(dbms_random.value(500,2000));
-- Variable que almacenara el nuevo salario
salarioN number;
begin

CASE
-- Si el salario es menor a 600 el aumento sera de un 15%
    when salariob <= 600 then
    dbms_output.put_line('es 15% ' ||salariob);

-- Si el salario es mayor a 601 y menor a 950 el aumento sera de un 12%
    when salariob >= 601 and salariob <= 950 then
    dbms_output.put_line('El salario es: ' || salariob || ' El aumento sera de 12%');
    dbms_output.put_line('El salario mas el aumento es: ' || ((salariob * 0.13)+ salariob));

-- Si el salario es mayor a 901 y menor a 1500 el aumento sera de un 10%
    when salariob >= 951 and salariob <= 1500 then
    dbms_output.put_line('El salario es: ' || salariob || ' El aumento sera de 10%');
    dbms_output.put_line('El salario mas el aumento es: ' || ((salariob * 0.10)+ salariob));

else
    dbms_output.put_line('El salario es: ' || salariob || ' El aumento sera de 5%');
    dbms_output.put_line('El salario mas el aumento es: ' || ((salariob * 0.05)+ salariob));
END CASE;
end;
