create or replace trigger NEWBOOKTRIGGER
after insert or delete on BOOK
for each ROW
BEGIN
    if inserting then
        dbms_output.PUT_LINE(:new.Title || 'Have been Inserted');
    elsif deleting then
        dbms_output.PUT_LINE('Book Have been Deleted' || :OLD.Title);
    end if;
end;
/
