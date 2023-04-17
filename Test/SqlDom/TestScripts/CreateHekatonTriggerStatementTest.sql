CREATE TRIGGER dbo.tr
   ON dbo.t
   WITH NATIVE_COMPILATION, SCHEMABINDING, EXECUTE AS OWNER
   AFTER INSERT
   AS BEGIN ATOMIC
      WITH (TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english')
          DECLARE @v AS INT;
          SELECT @v = count(*)
          FROM inserted;
      END;