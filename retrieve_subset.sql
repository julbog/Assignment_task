SET MARKUP CSV ON DELIMITER | QUOTE OFF
SET FEEDBACK OFF
SET HEADSEP OFF
SET PAGESIZE 0
SET TRIMSPOOL ON
SPOOL /home/julia/oracle_client/gathered_data.csv
SELECT id, creation_date, message FROM swed_test WHERE ROWNUM<=100 ORDER BY 1;
SPOOL OFF
EXIT;

