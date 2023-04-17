SELECT *
FROM t1
OPTION (HASH GROUP, CONCAT UNION, LOOP JOIN, FAST 10, FORCE ORDER, MAXDOP 2);


GO
SELECT *
FROM t1
OPTION (ORDER GROUP, HASH UNION, MERGE JOIN);


GO
SELECT *
FROM t1
OPTION (MERGE UNION, HASH JOIN);


GO
SELECT *
FROM t1
OPTION (KEEP UNION, ROBUST PLAN);


GO
SELECT *
FROM t1
OPTION (BYPASS OPTIMIZER_QUEUE, EXPAND VIEWS);


GO
SELECT *
FROM t1
OPTION (KEEPFIXED PLAN);


GO
SELECT *
FROM t1
OPTION (USEPLAN 2, SHRINKDB PLAN);


GO
SELECT *
FROM t1
OPTION (ALTERCOLUMN PLAN);
