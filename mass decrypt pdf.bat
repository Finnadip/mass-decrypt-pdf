@echo off

setlocal enabledelayedexpansion

set PDF_FOLDER=C:\PATH-HERE
set PASSWORD=PASSWORD

for %%F in ("%PDF_FOLDER%\*.pdf") do (
    qpdf --password=!PASSWORD! --decrypt "%%~fF" "%%~dpFdecrypted\%%~nF.pdf"
)

echo All PDF files have been decrypted.

pause