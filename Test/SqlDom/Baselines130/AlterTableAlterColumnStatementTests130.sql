ALTER TABLE dbo.t1 ALTER COLUMN [my column] ADD ROWGUIDCOL WITH (ONLINE = ON);

ALTER TABLE dbo.t1 ALTER COLUMN [my column] ADD ROWGUIDCOL WITH (ONLINE = OFF);

ALTER TABLE [tempdb].dbo.[table 2] ALTER COLUMN c1 DROP ROWGUIDCOL WITH (ONLINE = ON);

ALTER TABLE [tempdb].dbo.[table 2] ALTER COLUMN c1 DROP ROWGUIDCOL WITH (ONLINE = OFF);

ALTER TABLE t1 ALTER COLUMN c1 INT WITH (ONLINE = ON);

ALTER TABLE t1 ALTER COLUMN c1 INT WITH (ONLINE = OFF);

ALTER TABLE t1 ALTER COLUMN c1 VARCHAR (20) COLLATE SomeCollation WITH (ONLINE = ON);

ALTER TABLE t1 ALTER COLUMN c1 VARCHAR (20) COLLATE SomeCollation WITH (ONLINE = OFF);

ALTER TABLE t1 ALTER COLUMN c1 VARCHAR (20) COLLATE SomeCollation NULL WITH (ONLINE = ON);

ALTER TABLE t1 ALTER COLUMN c1 VARCHAR (20) COLLATE SomeCollation NULL WITH (ONLINE = OFF);

ALTER TABLE t1 ALTER COLUMN c1 INT NULL WITH (ONLINE = ON);

ALTER TABLE t1 ALTER COLUMN c1 INT NULL WITH (ONLINE = OFF);

ALTER TABLE t1 ALTER COLUMN c1 INT NOT NULL WITH (ONLINE = ON);

ALTER TABLE t1 ALTER COLUMN c1 INT NOT NULL WITH (ONLINE = OFF);

ALTER TABLE t1 ALTER COLUMN c1 ADD NOT FOR REPLICATION WITH (ONLINE = ON);

ALTER TABLE t1 ALTER COLUMN c1 ADD NOT FOR REPLICATION WITH (ONLINE = OFF);

ALTER TABLE t1 ALTER COLUMN c1 DROP NOT FOR REPLICATION WITH (ONLINE = ON);

ALTER TABLE t1 ALTER COLUMN c1 DROP NOT FOR REPLICATION WITH (ONLINE = OFF);

ALTER TABLE t1 ALTER COLUMN c1 ADD MASKED WITH (FUNCTION = 'default()');

ALTER TABLE t1 ALTER COLUMN c1 DROP MASKED;

ALTER TABLE t1 ALTER COLUMN c1 VARCHAR (20) MASKED WITH (FUNCTION = 'partial(3, "XXXX", 4)');

ALTER TABLE t1 ALTER COLUMN c1 ADD HIDDEN;

ALTER TABLE t1 ALTER COLUMN c1 DROP HIDDEN;

ALTER TABLE t1 ALTER COLUMN c1 VARBINARY (85) GENERATED ALWAYS AS SUSER_SID START;

ALTER TABLE t1 ALTER COLUMN c1 VARBINARY (85) GENERATED ALWAYS AS SUSER_SID END;

ALTER TABLE t1 ALTER COLUMN c1 NVARCHAR (128) GENERATED ALWAYS AS SUSER_SNAME START;

ALTER TABLE t1 ALTER COLUMN c1 NVARCHAR (128) GENERATED ALWAYS AS SUSER_SNAME END;

ALTER TABLE t1 ALTER COLUMN c1 VARBINARY (85) GENERATED ALWAYS AS SUSER_SID START HIDDEN;

ALTER TABLE t1 ALTER COLUMN c1 VARBINARY (85) GENERATED ALWAYS AS SUSER_SID END HIDDEN;

ALTER TABLE t1 ALTER COLUMN c1 NVARCHAR (128) GENERATED ALWAYS AS SUSER_SNAME START HIDDEN;

ALTER TABLE t1 ALTER COLUMN c1 NVARCHAR (128) GENERATED ALWAYS AS SUSER_SNAME END HIDDEN;

ALTER TABLE t1 ALTER COLUMN c1 VARBINARY (85) GENERATED ALWAYS AS SUSER_SID START NOT NULL;

ALTER TABLE t1 ALTER COLUMN c1 VARBINARY (85) GENERATED ALWAYS AS SUSER_SID END NOT NULL;

ALTER TABLE t1 ALTER COLUMN c1 NVARCHAR (128) GENERATED ALWAYS AS SUSER_SNAME START NOT NULL;

ALTER TABLE t1 ALTER COLUMN c1 NVARCHAR (128) GENERATED ALWAYS AS SUSER_SNAME END NOT NULL;

ALTER TABLE t1 ALTER COLUMN c1 VARBINARY (85) GENERATED ALWAYS AS SUSER_SID START HIDDEN NOT NULL;

ALTER TABLE t1 ALTER COLUMN c1 VARBINARY (85) GENERATED ALWAYS AS SUSER_SID END HIDDEN NOT NULL;

ALTER TABLE t1 ALTER COLUMN c1 NVARCHAR (128) GENERATED ALWAYS AS SUSER_SNAME START HIDDEN NOT NULL;

ALTER TABLE t1 ALTER COLUMN c1 NVARCHAR (128) GENERATED ALWAYS AS SUSER_SNAME END HIDDEN NOT NULL;
