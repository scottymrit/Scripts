-- Duplicate Rows in a table
-- 
SELECT column_name1
  FROM table_name
 WHERE ROWID IN (
          SELECT ROWID
            FROM (SELECT ROWID,
                         ROW_NUMBER () OVER
                            (PARTITION BY column_name1,column_name2
                                 ORDER BY column_name1,column_name2) dup
                    FROM table_name)
           WHERE dup > 1);