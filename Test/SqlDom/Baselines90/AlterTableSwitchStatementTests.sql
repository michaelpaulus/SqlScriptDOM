ALTER TABLE t1 SWITCH TO t2;

ALTER TABLE t1 SWITCH TO db.dbo.t2;

ALTER TABLE t1 SWITCH PARTITION 2 + 3 TO dbo.[t3];

ALTER TABLE t1 SWITCH TO dbo.[t3] PARTITION 3;

ALTER TABLE t1 SWITCH PARTITION -10 TO dbo.[t3] PARTITION +12;

