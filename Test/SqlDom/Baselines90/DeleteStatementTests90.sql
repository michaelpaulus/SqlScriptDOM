DELETE TOP (2.5) PERCENT
 t1;

DELETE TOP (SELECT *
            FROM t2) PERCENT
 t1;


GO
DELETE t1
OUTPUT a.*;

DELETE t1
OUTPUT a.b.c1 AS [c2];

DELETE t1
OUTPUT a.b.c1 AS [c2], c2;

DELETE t1
OUTPUT 2 + 3 AS c4;

DELETE t1
OUTPUT 2 + 3 AS c4
FROM t2;

DELETE t1
OUTPUT c1, c2 INTO @t1;

DELETE t1
OUTPUT c1, c2 INTO @t1 (c1);

DELETE t1
OUTPUT c1, c2 INTO dbo.a (c1, c2, c3);

DELETE t1
OUTPUT c1, c2 INTO .dbo.a (c1)
FROM t2;

DELETE t1
OUTPUT c1, c2 INTO @t1
OUTPUT c1 AS [C1], 12 * 12 AS [144];

DELETE t1
OUTPUT c1, c2 INTO @t1 (c1)
OUTPUT C10;

DELETE t1
OUTPUT c1, c2 INTO @t1 (c1)
OUTPUT C10
FROM t2;