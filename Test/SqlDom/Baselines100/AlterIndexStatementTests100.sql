ALTER INDEX ALL
    ON t1 REBUILD PARTITION = ALL;

ALTER INDEX ALL
    ON t1 REBUILD PARTITION = ALL WITH(PAD_INDEX = ON);