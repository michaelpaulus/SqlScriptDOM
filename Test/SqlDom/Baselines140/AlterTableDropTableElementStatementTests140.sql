﻿ALTER TABLE T1 DROP CONSTRAINT C21
    WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 10 MINUTES, ABORT_AFTER_WAIT = NONE));

ALTER TABLE T1 DROP COLUMN C1, CONSTRAINT C21
    WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 10 MINUTES, ABORT_AFTER_WAIT = NONE)), CS1
    WITH (MOVE TO 'DEFAULT' (COL1), ONLINE = OFF, MAXDOP = 21);

ALTER TABLE T1 DROP CONSTRAINT CS1
    WITH (ONLINE = OFF, MOVE TO MYFILEGROUP, WAIT_AT_LOW_PRIORITY (MAX_DURATION = 10 MINUTES, ABORT_AFTER_WAIT = NONE)), CS2
    WITH (MAXDOP = 21);

ALTER TABLE T1 DROP COLUMN C1, CONSTRAINT C21
    WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 10 MINUTES, ABORT_AFTER_WAIT = NONE), ONLINE = ON), CS1
    WITH (MOVE TO 'DEFAULT' (COL1), ONLINE = OFF, MAXDOP = 21);

ALTER TABLE T1 DROP CONSTRAINT CS1
    WITH (ONLINE = OFF, MOVE TO MYFILEGROUP, WAIT_AT_LOW_PRIORITY (MAX_DURATION = 10 MINUTES, ABORT_AFTER_WAIT = NONE)), CS2
    WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 10 MINUTES, ABORT_AFTER_WAIT = NONE), MAXDOP = 21);
