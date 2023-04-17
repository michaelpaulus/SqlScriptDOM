﻿ALTER DATABASE [test]
    ADD FILE (NAME = 'MyFile') TO FILEGROUP [MY FILEGROUP];

ALTER DATABASE [test]
    ADD FILE (MAXSIZE = 300 GB, NAME = 'MyFile') TO FILEGROUP [MY FILEGROUP];

CREATE DATABASE [test]
    ON 
    PRIMARY(NAME = 'PrimaryFileNoPath', MAXSIZE = 1 GB)
    LOG ON (NAME = 'LogFile');

CREATE DATABASE [test]
    ON 
    PRIMARY(NAME = 'PrimaryFileNoPath', MAXSIZE = 1 GB), (NAME = 'PrimaryFileNoPath2')
    LOG ON (NAME = 'LogFile');
