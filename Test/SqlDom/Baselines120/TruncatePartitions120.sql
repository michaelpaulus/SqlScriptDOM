TRUNCATE TABLE t WITH ( PARTITIONS (1) );

TRUNCATE TABLE t WITH ( PARTITIONS (1 TO 2) );

TRUNCATE TABLE t WITH ( PARTITIONS (1, 2 TO 3) );

TRUNCATE TABLE t;
