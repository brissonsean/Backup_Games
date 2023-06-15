@echo on
echo Moving NON-VR Files 
 move SDL2.dll #Non-VR/
 move openal32.dll #Non-VR/

echo Moving VR-Files
SET MoveToDir=F:\game\JKJ\JK3\FULL
SET MoveFromDir=F:\game\JKJ\JK3\FULL\#VR

:: Move the folders from the move directory to the move to directory
FOR /D %%A IN ("%MoveFromDir%\*") DO MOVE /Y "%%~A" "%MoveToDir%"


:: Move any remaining files (or folders) from the move directory to the move to directory
FOR /F "TOKENS=*" %%A IN ('DIR /S /B "%MoveFromDir%\*.*"') DO MOVE /Y "%%~A" "%MoveToDir%\"
GOTO EOF
timeout 3
cd F:\game\JKJ\JK3\FULL
move assets4.pk3 base/
echo DONE; Dont forget to Run UnVR.bat

pause
exit