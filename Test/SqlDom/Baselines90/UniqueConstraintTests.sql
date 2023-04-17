CREATE TABLE t1 (
    a1  INT UNIQUE,
    a2  INT CONSTRAINT C2 UNIQUE NONCLUSTERED,
    a3  INT CONSTRAINT C3 UNIQUE CLUSTERED WITH (FILLFACTOR = 34) ON [DEFAULT],
    a4  INT CONSTRAINT C4 UNIQUE WITH (FILLFACTOR = 34) ON MyGroup,
    a5  INT PRIMARY KEY,
    a6  INT CONSTRAINT C6 PRIMARY KEY CLUSTERED,
    a7  INT CONSTRAINT C7 PRIMARY KEY NONCLUSTERED WITH (FILLFACTOR = 34) ON [DEFAULT],
    a8  INT CONSTRAINT C8 PRIMARY KEY WITH (FILLFACTOR = 34) ON MyGroup,
    a9  INT CONSTRAINT C3 UNIQUE CLUSTERED WITH (FILLFACTOR = 34) ON partScheme,
    a11 INT CONSTRAINT C8 PRIMARY KEY ON MyGroup,
    a12 INT CONSTRAINT C8 PRIMARY KEY WITH (FILLFACTOR = 1) ON MyGroup,
    a13 INT CONSTRAINT C8 PRIMARY KEY WITH (FILLFACTOR = 12) ON MyGroup,
    UNIQUE (a1 ASC, a2 DESC, a3, a4 DESC),
    CONSTRAINT C12 UNIQUE NONCLUSTERED (a1 ASC),
    CONSTRAINT C13 UNIQUE CLUSTERED (a1 ASC, a2 DESC) WITH (FILLFACTOR = 34) ON [DEFAULT],
    CONSTRAINT C14 UNIQUE (a1 ASC, a2 DESC, a3) WITH (FILLFACTOR = 34) ON MyGroup,
    PRIMARY KEY (a1 ASC, a2, a3, a4 DESC),
    CONSTRAINT C16 PRIMARY KEY CLUSTERED (a1 ASC),
    CONSTRAINT C17 PRIMARY KEY NONCLUSTERED (a1 ASC, a2 DESC) WITH (FILLFACTOR = 34) ON [DEFAULT],
    CONSTRAINT C18 PRIMARY KEY (a1 ASC, a2 DESC, a3) WITH (FILLFACTOR = 34) ON MyGroup,
    CONSTRAINT C19 UNIQUE CLUSTERED (a1 ASC, a2 DESC) WITH (FILLFACTOR = 34),
    CONSTRAINT C21 PRIMARY KEY (a1 ASC, a2 DESC, a3) ON MyGroup,
    CONSTRAINT C22 PRIMARY KEY (a1 ASC, a2 DESC, a3) WITH (FILLFACTOR = 12) ON MyGroup,
    CONSTRAINT C23 PRIMARY KEY (a1 ASC, a2 DESC, a3) WITH (FILLFACTOR = 12) ON MyGroup
);

