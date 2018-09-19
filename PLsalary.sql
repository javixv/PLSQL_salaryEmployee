set serveroutput on;

declare
salariob number := round(dbms_random.value(600,2000));
salarioN number;
begin

CASE
    when salariob <= 600 then
dbms_output.put_line('es 15% ' ||salariob);

when salariob >= 601 and salariob <= 950 then
dbms_output.put_line('El salario es: ' || salariob || ' El aumento sera de 13.5%');
dbms_output.put_line('El salario mas el aumento es: ' || ((salariob * 0.135)+ salariob));

when salariob >= 951 and salariob <= 1400 then
dbms_output.put_line('El salario es: ' || salariob || ' El aumento sera de 10%');
dbms_output.put_line('El salario mas el aumento es: ' || ((salariob * 0.10)+ salariob));

else
dbms_output.put_line('El salario es: ' || salariob || ' El aumento sera de 5%');
dbms_output.put_line('El salario mas el aumento es: ' || ((salariob * 0.05)+ salariob));
END CASE;
end;
