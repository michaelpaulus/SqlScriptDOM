ALTER DATABASE d1
    ADD FILEGROUP fg1;

ALTER DATABASE d1
    REMOVE FILEGROUP fg1;

ALTER DATABASE d1
    MODIFY FILEGROUP fg1 READONLY;

ALTER DATABASE d1
    MODIFY FILEGROUP fg1 READ_ONLY;

ALTER DATABASE d1
    MODIFY FILEGROUP fg1 READWRITE;

ALTER DATABASE d1
    MODIFY FILEGROUP fg1 READ_WRITE;

ALTER DATABASE d1
    MODIFY FILEGROUP fg1 DEFAULT;

ALTER DATABASE d1
    MODIFY FILEGROUP fg1 NAME = fg2;

ALTER DATABASE AdventureWorks
    ADD FILE (NAME = test1dat3, FILENAME = 'f1'), (NAME = test1dat4, FILENAME = 'f2') TO FILEGROUP Test1FG;

ALTER DATABASE AdventureWorks
    ADD LOG FILE (FILENAME = 'log', NAME = test1log2);

ALTER DATABASE db1
     REMOVE FILE myfile;

ALTER DATABASE db1
    MODIFY FILE (NAME = n1, NEWNAME = n2);

ALTER DATABASE db1
    MODIFY NAME = db2;

ALTER DATABASE db1 COLLATE Estonian_CS_AS;

ALTER DATABASE SCOPED COLLATE Estonian_CS_AS;

ALTER DATABASE [SCOPED CREDENTIAL] COLLATE Estonian_CS_AS;