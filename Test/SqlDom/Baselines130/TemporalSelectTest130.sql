SELECT *
FROM T FOR SYSTEM_TIME AS OF '01/02/03';


GO
SELECT *
FROM T FOR SYSTEM_TIME AS OF N'01/02/03' AS X TABLESAMPLE (100) WITH (TABLOCK);


GO
SELECT *
FROM T FOR SYSTEM_TIME AS OF @startTime AS X TABLESAMPLE (100);


GO
SELECT *
FROM T FOR SYSTEM_TIME BETWEEN '01/02/03' AND '04/05/06'
OPTION (USE PLAN N'stored_plan');


GO
SELECT *
FROM T FOR SYSTEM_TIME BETWEEN '01/02/03' AND @endTime TABLESAMPLE (100);


GO
SELECT *
FROM T FOR SYSTEM_TIME BETWEEN @startTime AND @endTime;


GO
SELECT *
FROM T FOR SYSTEM_TIME FROM '01/02/03' TO '04/05/06' TABLESAMPLE (100) WITH (TABLOCK);


GO
SELECT *
FROM T FOR SYSTEM_TIME FROM @startTime TO '04/05/06';


GO
SELECT *
FROM T FOR SYSTEM_TIME FROM @startTime TO @endTime AS X TABLESAMPLE (100)
OPTION (RECOMPILE, EXPAND VIEWS);


GO
SELECT *
FROM T FOR SYSTEM_TIME CONTAINED IN ('01/02/03', '04/05/06');


GO
SELECT *
FROM T FOR SYSTEM_TIME CONTAINED IN (@startTime, '04/05/06') AS X;


GO
SELECT *
FROM T FOR SYSTEM_TIME CONTAINED IN (@startTime, @endTime) AS X
OPTION (USE PLAN N'stored_plan');


GO
SELECT *
FROM T FOR SYSTEM_TIME ALL;


GO
SELECT *
FROM T FOR SYSTEM_TIME ALL AS X
OPTION (USE PLAN N'stored_plan');


GO
SELECT *
FROM T FOR SYSTEM_TIME ALL TABLESAMPLE (100);


GO
SELECT *
FROM T1 FOR SYSTEM_TIME AS OF '01/02/03', T2 FOR SYSTEM_TIME BETWEEN @startTime AND @endTime, T3 FOR SYSTEM_TIME FROM @startTime TO '04/05/06', T4 FOR SYSTEM_TIME CONTAINED IN (@startTime, @endTime);


GO
SELECT *
FROM T1 FOR SYSTEM_TIME AS OF '01/02/03', T2 FOR SYSTEM_TIME BETWEEN @startTime AND @endTime, T3 FOR SYSTEM_TIME FROM @startTime TO '04/05/06', T4 FOR SYSTEM_TIME CONTAINED IN (@startTime, @endTime), T5 FOR SYSTEM_TIME ALL;


GO
SELECT *
FROM T1 FOR SYSTEM_TIME AS OF '01/02/03', T2;


GO
SELECT *
FROM T1 FOR SYSTEM_TIME AS OF @startTime AS X
     INNER JOIN
     T2 FOR SYSTEM_TIME AS OF @startTime AS Y
     ON X.A = Y.B;


GO
SELECT *
FROM T1 FOR SYSTEM_TIME AS OF @startTime AS X
     INNER JOIN
     T2 AS Y
     ON X.A = Y.B;


GO
WITH CTE
AS (SELECT *
    FROM T FOR SYSTEM_TIME BETWEEN @startTime AND @endTime)
SELECT *
FROM CTE;


GO
SELECT *
FROM (SELECT *
      FROM T FOR SYSTEM_TIME BETWEEN @startTime AND @endTime) AS X;