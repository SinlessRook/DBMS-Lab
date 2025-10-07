SET SERVEROUTPUT ON;
declare
cursor c1 is select TITLE,PUBLISHER_NAME,PUB_YEAR from BOOK;
t BOOK.TITLE%type;
p BOOK.PUBLISHER_NAME%TYPE;
y BOOK.PUB_YEAR%TYPE;


begin
    for i in c1
    loop
         dbms_output.put_line(i.TITLE || ', ' || i.PUBLISHER_NAME || ', ' || i.PUB_YEAR);
    end loop;
end;

/
