#!/bin/sh
echo "ÉN VAGYOK A BACKUP GYILKOS !!!!!!!!!!!!!!!!!"
echo "MEGÖLÖM A RÉGI BACKUPOKAT !!!!!!!!!!!!!"
cd /YOUR/FOLDER/PATH/
echo "/YOUR/FOLDER/PATH/ MAPPÁBA VAGYOK"
echo "  "
echo "EZEKET TALÁLTAM ÖSSZESEN:"
find *
echo "  "
echo "EZEK EGYNAPON TÚLIAK:"
find * -mtime +1
echo "  "
echo "EZEK KÉTNAPON TÚLIAK:"
find * -mtime +2
echo "  "
echo "EZEK HÁROMNAPON TÚLIAK:"
find * -mtime +3
echo "  "
echo "A HÁROM NAPON TÚLIAK MOST MEGHALNAK"
echo "  "
find * -mtime +3 -exec rm {} \;
echo "  "
echo "HA NEM DOBTAM HIBÁT, AKKOR KILLÁZTAM AZ ÖSSZESET"
echo "  "
echo "AGYIOSZ"
exit 0
