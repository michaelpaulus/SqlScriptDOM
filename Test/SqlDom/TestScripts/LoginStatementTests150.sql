CREATE LOGIN [l1] FROM EXTERNAL provider WITH SID = 0x6A8BD717B5ABA147B5D811E3D268FB3D, TYPE = [X]
CREATE LOGIN [l1] FROM EXTERNAL PROVIDER WITH SID = 0x6A8BD717B5ABA147B5D811E3D268FB3D, TYPE = E
create login [l1] from external provider
create login l1 from external provider
create login [l1] from external provider with default_database = db1
create login [l1] from external provider with default_language = l1
create login [l1] from external provider WITH default_database = db1, default_language = l1
CREATE LOGIN [l1] FROM EXTERNAL PROVIDER WITH SID = 0x6A8BD717B5ABA147B5D811E3D268FB3D, TYPE = X, DEFAULT_DATABASE = db1
CREATE LOGIN [l1] FROM EXTERNAL PROVIDER WITH TYPE = E, SID = 0x6A8BD717B5ABA147B5D811E3D268FB3D, DEFAULT_LANGUAGE = l1
CREATE LOGIN [l1] FROM EXTERNAL PROVIDER WITH SID = 0x6A8BD717B5ABA147B5D811E3D268FB3D, TYPE = X, DEFAULT_LANGUAGE = l1, DEFAULT_DATABASE = db1