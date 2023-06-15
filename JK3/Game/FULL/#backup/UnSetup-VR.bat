@echo on
echo Moving VR Files 
 move SDL2.dll #VR/
 move OpenAL32.dll #VR/
 move libovr.dll #VR/
 move jasphmd.exe #VR/
 move jagamehmdx86.dll #VR/


 move base/assets4.pk3 #VR/base

echo Moving Non-VR-Files
SET MoveToDir=F:\game\JKJ\JK3\FULL
SET MoveFromDir=F:\game\JKJ\JK3\FULL\#Non-VR

:: Move the folders from the move directory to the move to directory
FOR /D %%A IN ("%MoveFromDir%\*") DO MOVE /Y "%%~A" "%MoveToDir%"


:: Move any remaining files (or folders) from the move directory to the move to directory
FOR /F "TOKENS=*" %%A IN ('DIR /S /B "%MoveFromDir%\*.*"') DO MOVE /Y "%%~A" "%MoveToDir%\"
GOTO EOF


echo DONE; Dont forget to Run VR.bat

pause
exit