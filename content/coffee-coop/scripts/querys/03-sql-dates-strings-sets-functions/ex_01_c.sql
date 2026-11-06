-- Exercise 01 - c
-- Current timestamp and current date in one row, without a table

SELECT
    NOW() AS now_ts,
    CURRENT_DATE AS today;

/*
            now_ts             |   today    
-------------------------------+------------
 2026-11-06 17:04:42.287631-05 | 2026-11-06
(1 row)
*/
