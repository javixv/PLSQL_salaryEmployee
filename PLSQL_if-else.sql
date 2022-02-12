SET SERVEROUTPUT ON;
-- IF Anidado
declare
score number := 84;
begin
if(score >= 90) then
dbms_output.put_line('Excellent');
elsif(score >=80) then
dbms_output.put_line('Very Good');
elsif(score >=80) then
dbms_output.put_line('Good');
else
dbms_output.put_line('Bad');
end if;
end;