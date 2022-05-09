#!/bin/sh
HOST='domain.com'
USER='ftpuser@somthing.com'
PASSWD='Pass'
FILE='backupfilename*'


echo "KEZDEM A MŰVELETEKET. BEÁLLOK A DWZ INTERWORX MENTÉSI MAPPÁJÁBA"
cd /BACKUPSFOLDER
echo "/BACKUPSFOLDER MAPPÁBA VAGYOK"
echo "     "
echo "EZ VOLT SIKERES HA NEM DOBTAM HIBÁT. KEZDEM A CSATLAKOZÁST AZ FTP-RE"

ftp -p -n $HOST <<END_SCRIPT
binary
prompt noprompt
quote USER $USER
quote PASS $PASSWD
mget $FILE
quit
END_SCRIPT

echo "HA NEM JELEZTEM HIBÁT, AKKOR VÉGEZTEM A FÁJLOK MENTÉSÉVEL!"
echo "VISZON LÁTÁSRA. NAMASTE"

exit 0
