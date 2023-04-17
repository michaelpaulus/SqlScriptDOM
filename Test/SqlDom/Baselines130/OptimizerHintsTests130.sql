SELECT *
FROM t1
OPTION (MAX_GRANT_PERCENT = 50);


GO
SELECT *
FROM t1
OPTION (MIN_GRANT_PERCENT = 40);


GO
SELECT *
FROM t1
OPTION (MIN_GRANT_PERCENT = 10.5, MAX_GRANT_PERCENT = 25);


GO
SELECT *
FROM t1
OPTION (MAX_GRANT_PERCENT = 50.44, MIN_GRANT_PERCENT = 50.44);


GO
SELECT *
FROM t1
OPTION (NO_PERFORMANCE_SPOOL);


GO
SELECT *
FROM t1
OPTION (LABEL = 'TabelT1');
