CREATE TABLE t_ncci_inline (
    c INT,
    INDEX ncci NONCLUSTERED COLUMNSTORE (c)
);


GO
CREATE TABLE t_cci_inline (
    c INT,
    INDEX cci CLUSTERED COLUMNSTORE
);


GO
CREATE TABLE t_ncci_filtered (
    c INT,
    INDEX ncci NONCLUSTERED COLUMNSTORE (c) WHERE c > 1
);


GO
CREATE TABLE table1 (
    c INT,
    INDEX ncci NONCLUSTERED COLUMNSTORE (c) WITH (COMPRESSION_DELAY = 1)
);


GO
CREATE TABLE table1 (
    c INT,
    INDEX ncci NONCLUSTERED COLUMNSTORE (c) WITH (COMPRESSION_DELAY = 1 MINUTE)
);


GO
CREATE TABLE table1 (
    c INT,
    INDEX ncci NONCLUSTERED COLUMNSTORE (c) WITH (COMPRESSION_DELAY = 10 MINUTES)
);


GO
CREATE TABLE table1 (
    c INT,
    INDEX ncci CLUSTERED COLUMNSTORE WITH (COMPRESSION_DELAY = 1)
);


GO
CREATE TABLE table1 (
    c INT,
    INDEX ncci CLUSTERED COLUMNSTORE WITH (COMPRESSION_DELAY = 1 MINUTE)
);


GO
CREATE TABLE table1 (
    c INT,
    INDEX cci CLUSTERED COLUMNSTORE WITH (COMPRESSION_DELAY = 10 MINUTES)
);


GO
CREATE TABLE t_implicit_ncci_inline (
    c INT,
    INDEX ncci NONCLUSTERED COLUMNSTORE (c)
);