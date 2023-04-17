CREATE DATABASE db
    COLLATE SQL_Latin1_General_CP1_CI_AS
    WITH CATALOG_COLLATION = DATABASE_DEFAULT

CREATE DATABASE db
    CONTAINMENT = NONE
    COLLATE Latin1_General_100_CI_AS_KS_WS_SC
    WITH TRANSFORM_NOISE_WORDS = ON, CATALOG_COLLATION = DATABASE_DEFAULT, DB_CHAINING OFF

CREATE DATABASE db
    WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, NESTED_TRIGGERS = OFF