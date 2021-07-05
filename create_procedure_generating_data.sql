CREATE OR REPLACE PROCEDURE     generate_data(insert_count IN NUMBER, batch_count IN NUMBER )
IS
starting_max_id NUMBER ;
BEGIN
SELECT  nvl(MAX(ID),0) INTO starting_max_id  FROM swed_test;
FOR batch_id IN 1..batch_count
LOOP
INSERT INTO swed_test(ID, creation_date, message)
SELECT ROWNUM + starting_max_id+(batch_id -1) * insert_count, sysdate, dbms_random.STRING('l',99)
FROM dual
CONNECT BY LEVEL <= insert_count;
COMMIT;
END LOOP;
END;  
/
EXIT;

