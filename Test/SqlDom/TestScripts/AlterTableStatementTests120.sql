﻿-- rebuild a single partition with online option (SPOIR)
alter table t1 rebuild partition = 1 with (ONLINE = ON)
alter table t1 rebuild partition = 1 with (ONLINE = OFF)

-- rebuild with low priority lock wait option (MLP)
alter table t1 rebuild with (ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0, ABORT_AFTER_WAIT = NONE)))
alter table t1 rebuild with (ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 1, ABORT_AFTER_WAIT = SELF)))
alter table t1 rebuild with (ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 1, ABORT_AFTER_WAIT = BLOCKERS)))
alter table t1 rebuild with (ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 1440 minutes, ABORT_AFTER_WAIT = NONE)))
alter table t1 rebuild with (ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 71582 minutes, ABORT_AFTER_WAIT = SELF)))
alter table t1 rebuild with (ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = BLOCKERS)))
alter table t1 rebuild with (PAD_INDEX = ON, FILLFACTOR = 50, ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 60, ABORT_AFTER_WAIT = SELF)), MAXDOP = 2, DATA_COMPRESSION = PAGE)

-- rebuild a single partition with online option and low priority lock wait option
alter table t1 rebuild PARTITION = 1 with (ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 minutes, ABORT_AFTER_WAIT = NONE)))
alter table t1 rebuild PARTITION = 1 with (ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 71582 minutes, ABORT_AFTER_WAIT = SELF)))
alter table t1 rebuild PARTITION = 1 with (ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 1440 MINUTES, ABORT_AFTER_WAIT = BLOCKERS)))
alter table t1 rebuild PARTITION = 1 with (SORT_IN_TEMPDB = ON, ONLINE = ON (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = BLOCKERS)), DATA_COMPRESSION = PAGE)

-- columnstore compression syntax
ALTER TABLE t1 REBUILD WITH (MAXDOP = 1, DATA_COMPRESSION = COLUMNSTORE);
ALTER TABLE t1 REBUILD PARTITION = 1 WITH (MAXDOP = 1, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE);
ALTER TABLE t1 REBUILD PARTITION = ALL WITH (DATA_COMPRESSION=COLUMNSTORE on PARTITIONS(1,3), DATA_COMPRESSION=COLUMNSTORE_ARCHIVE on PARTITIONS(2,4))