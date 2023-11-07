@echo off

SET /A rdm = %RANDOM%
SET /A try = 0

GOTO deb

:tooHigh
ECHO Trop haut !
GOTO deb

:tooLow
ECHO Trop bas !
GOTO deb

:deb
SET /P nb=Donnez un nombre : 
SET /A try = %try% + 1

IF %nb% lss %rdm% GOTO tooLow
IF %nb%==%rdm% GOTO end
IF %nb% gtr %rdm% GOTO tooHigh


GOTO deb

:end
ECHO YOU win with only %try% tries !
pause