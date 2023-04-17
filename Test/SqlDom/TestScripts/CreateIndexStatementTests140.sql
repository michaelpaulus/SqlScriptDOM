﻿-- Tests for ignore_dup_key/suppress_messages options.
CREATE UNIQUE NONCLUSTERED INDEX nci ON table1 (col1) WITH (IGNORE_DUP_KEY = ON (SUPPRESS_MESSAGES = ON));
CREATE UNIQUE NONCLUSTERED INDEX nci ON table1 (col1) WITH (IGNORE_DUP_KEY = ON (SUPPRESS_MESSAGES = OFF));
CREATE UNIQUE CLUSTERED INDEX ci ON table1 (col1) WITH (IGNORE_DUP_KEY = ON (SUPPRESS_MESSAGES = ON));
CREATE UNIQUE CLUSTERED INDEX ci ON table1 (col1) WITH (IGNORE_DUP_KEY = ON (SUPPRESS_MESSAGES = OFF));
CREATE UNIQUE NONCLUSTERED INDEX nci ON table1 (col1) WITH (IGNORE_DUP_KEY = ON);
CREATE UNIQUE NONCLUSTERED INDEX nci ON table1 (col1) WITH (IGNORE_DUP_KEY = OFF);
CREATE UNIQUE CLUSTERED INDEX ci ON table1 (col1) WITH (IGNORE_DUP_KEY = ON);
CREATE UNIQUE CLUSTERED INDEX ci ON table1 (col1) WITH (IGNORE_DUP_KEY = OFF);
CREATE UNIQUE NONCLUSTERED INDEX nci ON table1(col1) WITH (ALLOW_PAGE_LOCKS = ON, IGNORE_DUP_KEY = ON (SUPPRESS_MESSAGES = ON), ALLOW_ROW_LOCKS = ON);
CREATE UNIQUE NONCLUSTERED INDEX nci ON table1(col1) WITH (ALLOW_PAGE_LOCKS = ON, IGNORE_DUP_KEY = ON (SUPPRESS_MESSAGES = OFF), ALLOW_ROW_LOCKS = ON);
CREATE UNIQUE CLUSTERED INDEX ci ON table1(col1) WITH (ALLOW_PAGE_LOCKS = ON, IGNORE_DUP_KEY = ON (SUPPRESS_MESSAGES = ON), ALLOW_ROW_LOCKS = ON);
CREATE UNIQUE CLUSTERED INDEX ci ON table1(col1) WITH (ALLOW_PAGE_LOCKS = ON, IGNORE_DUP_KEY = ON (SUPPRESS_MESSAGES = OFF), ALLOW_ROW_LOCKS = ON);

-- Tests for online options.
CREATE CLUSTERED COLUMNSTORE INDEX cci ON table1 WITH (ONLINE=OFF);
CREATE CLUSTERED COLUMNSTORE INDEX cci ON table1 WITH (ONLINE=ON);
CREATE NONCLUSTERED COLUMNSTORE INDEX ncci ON table1 (col1) WITH (ONLINE=OFF);
CREATE NONCLUSTERED COLUMNSTORE INDEX ncci ON table1 (col1) WITH (ONLINE=ON);
CREATE CLUSTERED COLUMNSTORE INDEX cci ON table1 WITH (MAXDOP=1, ONLINE=OFF);
CREATE NONCLUSTERED COLUMNSTORE INDEX ncci ON table1 (col1) WITH (ONLINE=ON, MAXDOP=1);