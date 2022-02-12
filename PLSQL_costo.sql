set SERVEROUTP on;

declare
numeroCamisas NUMBER := 5;
montoCamisas NUMBER := 19.99;
sub NUMBER;
total NUMBER;
begin
    sub :=  (numeroCamisas * montoCamisas);
    total:= ((0.15 *(sub))+ sub);
    dbms_output.put_line('SubTotal: ' || sub);
    dbms_output.put_line('Total a pagar: ' || total);
    dbms_output.put_line('SubTotal a Pagar: ' || (((0.15 *(numeroCamisas * montoCamisas))+(numeroCamisas * montoCamisas))));

end;