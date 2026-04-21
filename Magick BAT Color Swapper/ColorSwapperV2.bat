@ECHO OFF
ECHO.
ECHO Image Magick Must be installed for this script to function!
ECHO You can download it here: https://imagemagick.org/download/
ECHO.
ECHO Be careful with this script! It won't destroy your computer, but if you choose the wrong folder path you could accidentally mess up images you didn't want it to touch!
ECHO.
ECHO This is a Windows Batch Script to change specific colors on images in multiple subfolders using ImageMagick.
ECHO This script will recursively go through ALL subfolders inside the folder path you enter.
ECHO If you are confident enough to modify this file, go right ahead! Just don't blame me if something goes wrong.
ECHO.
ECHO Don't enter the path directly to one image, set it to a folder. Again, it will do every subfolder inside the folder you choose.
ECHO.

setlocal enabledelayedexpansion
for /f "tokens=* eol=|" %%G in (UserInputV2.txt) do (
    set /a Count+=1+0
    set Var[!Count!]=%%G
)
setlocal disabledelayedexpansion

SET Magick_Path=%Var[1]:"=%
SET Magick_Path=%Magick_Path:.exe=%
if not exist "%Magick_Path%.exe" (
    ECHO exe path Invaild. Try again.
    PAUSE
    EXIT
)

SET Folder_Path=%Var[2]:"=%
if not exist "%Folder_Path%" (
    ECHO Folder path Invaild. Try again.
    PAUSE
    EXIT
)

SET Extension=%Var[3]:"=%
SET Extension=%Extension:.=%

SET Old_Color_1=%Var[4]:"=%
SET Old_Color_1=%Old_Color_1:#=%
SET New_Color_1=%Var[5]:"=%
SET New_Color_1=%New_Color_1:#=%

SET Old_Color_2=%Var[6]:"=%
SET Old_Color_2=%Old_Color_2:#=%
SET New_Color_2=%Var[7]:"=%
SET New_Color_2=%New_Color_2:#=%

SET Old_Color_3=%Var[8]:"=%
SET Old_Color_3=%Old_Color_3:#=%
SET New_Color_3=%Var[9]:"=%
SET New_Color_3=%New_Color_3:#=%

SET Old_Color_4=%Var[10]:"=%
SET Old_Color_4=%Old_Color_4:#=%
SET New_Color_4=%Var[11]:"=%
SET New_Color_4=%New_Color_4:#=%

SET Old_Color_5=%Var[12]:"=%
SET Old_Color_5=%Old_Color_5:#=%
SET New_Color_5=%Var[13]:"=%
SET New_Color_5=%New_Color_5:#=%

FOR /R "%Folder_Path%" %%H in (*.%Extension%) DO (
    ECHO %%~H
    "%Magick_Path%" "%%H" -fill #%New_Color_1% -opaque #%Old_Color_1% "%%H"
    "%Magick_Path%" "%%H" -fill #%New_Color_2% -opaque #%Old_Color_2% "%%H"
    "%Magick_Path%" "%%H" -fill #%New_Color_3% -opaque #%Old_Color_3% "%%H"
    "%Magick_Path%" "%%H" -fill #%New_Color_4% -opaque #%Old_Color_4% "%%H"
    "%Magick_Path%" "%%H" -fill #%New_Color_5% -opaque #%Old_Color_5% "%%H"
)

ECHO Process Complete.
PAUSE