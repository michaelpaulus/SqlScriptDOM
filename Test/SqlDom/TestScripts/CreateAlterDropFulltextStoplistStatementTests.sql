CREATE FULLTEXT STOPLIST fs1;

CREATE FULLTEXT STOPLIST fs1 FROM dbo.source1;

CREATE FULLTEXT STOPLIST fs1 FROM source1;

CREATE FULLTEXT STOPLIST fs1 FROM SYSTEM STOPLIST;

CREATE FULLTEXT STOPLIST fs1 FROM dbo.source1 AUTHORIZATION owner;

CREATE FULLTEXT STOPLIST fs1 FROM SYSTEM STOPLIST AUTHORIZATION owner;

CREATE FULLTEXT STOPLIST fs1 FROM source1 AUTHORIZATION owner;

CREATE FULLTEXT STOPLIST fs1 AUTHORIZATION owner;
GO

ALTER FULLTEXT STOPLIST fs1 ADD 'sw' LANGUAGE "ENGLISH";

ALTER FULLTEXT STOPLIST fs1 ADD 'sw' LANGUAGE THAI;

ALTER FULLTEXT STOPLIST fs1 DROP 'sw' LANGUAGE "THAI";

ALTER FULLTEXT STOPLIST fs1 ADD 'sw' LANGUAGE [ENGLISH];

ALTER FULLTEXT STOPLIST fs1 ADD 'sw' LANGUAGE 'FRENCH';

ALTER FULLTEXT STOPLIST fs1 DROP ALL LANGUAGE 0x411;

ALTER FULLTEXT STOPLIST fs1 DROP ALL;

ALTER FULLTEXT STOPLIST fs1 DROP 'sw' LANGUAGE 1033;
GO

DROP FULLTEXT STOPLIST fs1;