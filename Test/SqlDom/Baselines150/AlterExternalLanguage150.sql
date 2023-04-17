﻿ALTER EXTERNAL LANGUAGE language1
    SET (CONTENT = 0x504B03040A0000000000A7167F4, FILE_NAME = 'AlteredExtension.dll', PLATFORM = LINUX);

ALTER EXTERNAL LANGUAGE language2
    AUTHORIZATION bing
    ADD (CONTENT = 0x5678, FILE_NAME = 'AlteredExtension.dll', PLATFORM = WINDOWS, PARAMETERS = N'newParam', ENVIRONMENT_VARIABLES = N'{"altered":"variable"}');

ALTER EXTERNAL LANGUAGE language3
    SET (CONTENT = 'c:\Path\language3.zip', FILE_NAME = 'WindowsExtension2.dll', PLATFORM = Linux);

ALTER EXTERNAL LANGUAGE [language4]
    SET (CONTENT = '\\machine-name\dir1\dir2\windowsextension-new.zip', FILE_NAME = 'WindowsExtension2.dll', PLATFORM = WINDOWS);

ALTER EXTERNAL LANGUAGE language5
    AUTHORIZATION bing
    REMOVE PLATFORM WINDOWS;

ALTER EXTERNAL LANGUAGE language6
    REMOVE PLATFORM LINUX;