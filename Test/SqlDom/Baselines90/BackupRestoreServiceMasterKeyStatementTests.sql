BACKUP SERVICE MASTER KEY TO FILE = 'f1' ENCRYPTION BY PASSWORD = 'pw1';

RESTORE SERVICE MASTER KEY FROM FILE = 'f1' DECRYPTION BY PASSWORD = 'pw1';

RESTORE SERVICE MASTER KEY FROM FILE = 'f1' DECRYPTION BY PASSWORD = 'pw1' FORCE;

BACKUP MASTER KEY TO FILE = 'f1' ENCRYPTION BY PASSWORD = 'p1';

RESTORE MASTER KEY FROM FILE = 'f1' DECRYPTION BY PASSWORD = 'p1' ENCRYPTION BY PASSWORD = 'p2';

RESTORE MASTER KEY FROM FILE = 'f1' DECRYPTION BY PASSWORD = 'p1' ENCRYPTION BY PASSWORD = 'p2' FORCE;