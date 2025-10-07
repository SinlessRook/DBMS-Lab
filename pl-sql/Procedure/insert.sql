CREATE OR REPLACE PROCEDURE Add_Movie (
    p_Title IN MOVIE.Title%TYPE,
    p_Year IN MOVIE.Movie_Year%TYPE,
    p_Language IN MOVIE.Language%TYPE
)
IS
BEGIN
    INSERT INTO MOVIE (Title, Movie_Year, Language)
    VALUES (p_Title, p_Year, p_Language);
    
    COMMIT;  -- save changes
    dbms_output.put_line('Movie "' || p_Title || '" added successfully!');
END;
/
