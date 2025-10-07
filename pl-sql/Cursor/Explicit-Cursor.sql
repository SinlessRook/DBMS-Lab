SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS
        SELECT TITLE, PUBLISHER_NAME, PUB_YEAR FROM BOOK;

    t BOOK.TITLE%TYPE;
    p BOOK.PUBLISHER_NAME%TYPE;
    y BOOK.PUB_YEAR%TYPE;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO t, p, y;
        EXIT WHEN c1%NOTFOUND;
        dbms_output.put_line(t || ', ' || p || ', ' || y);
    END LOOP;
    CLOSE c1;
END;
/
