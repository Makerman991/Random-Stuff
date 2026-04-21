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
ECHO Path can be in quotation marks or not. Extention can have dot or not. Colors are in Hex Format. Examples Below.
ECHO.
ECHO "C:\Users\Example\Downloads\" will modify all images contained in the downloads folder and subfolders.
ECHO .png and "png" are both acceptable ways to enter the Extension.
ECHO
ECHO "e52b50" and #702963 are both acceptable ways to enter the color values. You can just spam enter once you add all the colors you want to change.
ECHO Make sure to not add an old color without choosing a new one! Leaving an empty value for an old or new color will choose FFFFFF(White) instead.
ECHO.
ECHO The magick.exe path should look something like this! "C:\Program Files\ImageMagick-7.1.2-Q16-HDRI\magick.exe"
ECHO.
ECHO.

:User_Magick_Path
ECHO.
SET /p "Magick_User_Path=Enter path to magick.exe: "
SET Magick_Path=%Magick_User_Path:"=%
if not exist "%Magick_Path%" (
    ECHO exe path Invaild. Try again.
    goto User_Magick_Path
)
:Input_Magick_Choice
ECHO.
SET /p "Magick_Path_Choice=You entered %Magick_Path%. Confirm? [Y,N]: "
if /i "%Magick_Path_Choice%"=="Y" goto User_Input_Path
if /i "%Magick_Path_Choice%"=="N" goto User_Magick_Path
echo Invalid input. Please try again.
goto Input_Magick_Choice

:User_Input_Path
ECHO.
SET /p "User_Path=Enter folder path: "
SET Path=%User_Path:"=%
if not exist "%Path%" (
    ECHO Folder path Invaild. Try again.
    goto User_Input_Path
)
:Input_Path_Choice
ECHO.
SET /p "Path_Choice=You entered %Path%. Confirm? [Y,N]: "
if /i "%Path_Choice%"=="Y" goto User_Extension_Enter
if /i "%Path_Choice%"=="N" goto User_Input_Path
echo Invalid input. Please try again.
goto Input_Path_Choice

:User_Extension_Enter
ECHO.
SET /p "User_Extension=Enter file extension: "
SET Extension=%User_Extension:"=%
SET Extension=%User_Extension:.=%
:Extension_Path_Choice
ECHO.
SET /p "Extension_Choice=You entered %Extension%. Confirm? [Y,N]: "
if /i "%Extension_Choice%"=="Y" goto Color_1
if /i "%Extension_Choice%"=="N" goto User_Extension_Enter
echo Invalid input. Please try again.
goto Extension_Path_Choice

:Color_1
ECHO.
SET /p "User_Old_Color_1=Enter Old Hex Color 1: "
if /i %errorlevel%==1 SET User_Old_Color_1=ffffff
SET Old_Color_1=%User_Old_Color_1:"=%
SET Old_Color_1=%User_Old_Color_1:#=%
SET /p "User_New_Color_1=Enter New Hex Color 1: "
if /i %errorlevel%==1 SET User_New_Color_1=ffffff
SET New_Color_1=%User_New_Color_1:"=%
SET New_Color_1=%User_New_Color_1:#=%
:User_Color_1_Choice
SET /p "Color_1_Choice=#%Old_Color_1% will be changed to #%New_Color_1%. Confirm? [N]: "
if /i "%Color_1_Choice%"=="N" goto Color_1
call 
goto Color_2

:Color_2
ECHO.
SET /p "User_Old_Color_2=Enter Old Hex Color 2: "
if /i %errorlevel%==1 SET User_Old_Color_2=ffffff
SET Old_Color_2=%User_Old_Color_2:"=%
SET Old_Color_2=%User_Old_Color_2:#=%
SET /p "User_New_Color_2=Enter New Hex Color 2: "
if /i %errorlevel%==1 SET User_New_Color_2=ffffff
SET New_Color_2=%User_New_Color_2:"=%
SET New_Color_2=%User_New_Color_2:#=%
:User_Color_2_Choice
SET /p "Color_2_Choice=#%Old_Color_2% will be changed to #%New_Color_2%. Confirm? [N]: "
if /i "%Color_2_Choice%"=="N" goto Color_2
call 
goto Color_3

:Color_3
ECHO.
SET /p "User_Old_Color_3=Enter Old Hex Color 3: "
if /i %errorlevel%==1 SET User_Old_Color_3=ffffff
SET Old_Color_3=%User_Old_Color_3:"=%
SET Old_Color_3=%User_Old_Color_3:#=%
SET /p "User_New_Color_3=Enter New Hex Color 3: "
if /i %errorlevel%==1 SET User_New_Color_3=ffffff
SET New_Color_3=%User_New_Color_3:"=%
SET New_Color_3=%User_New_Color_3:#=%
:User_Color_3_Choice
SET /p "Color_3_Choice=#%Old_Color_3% will be changed to #%New_Color_3%. Confirm? [N]: "
if /i "%Color_3_Choice%"=="N" goto Color_3
call 
goto Color_4

:Color_4
ECHO.
SET /p "User_Old_Color_4=Enter Old Hex Color 4: "
if /i %errorlevel%==1 SET User_Old_Color_4=ffffff
SET Old_Color_4=%User_Old_Color_4:"=%
SET Old_Color_4=%User_Old_Color_4:#=%
SET /p "User_New_Color_4=Enter New Hex Color 4: "
if /i %errorlevel%==1 SET User_New_Color_4=ffffff
SET New_Color_4=%User_New_Color_4:"=%
SET New_Color_4=%User_New_Color_4:#=%
:User_Color_4_Choice
SET /p "Color_4_Choice=#%Old_Color_4% will be changed to #%New_Color_4%. Confirm? [N]: "
if /i "%Color_4_Choice%"=="N" goto Color_4
call 
goto Color_5

:Color_5
ECHO.
SET /p "User_Old_Color_5=Enter Old Hex Color 5: "
if /i %errorlevel%==1 SET User_Old_Color_5=ffffff
SET Old_Color_5=%User_Old_Color_5:"=%
SET Old_Color_5=%User_Old_Color_5:#=%
SET /p "User_New_Color_5=Enter New Hex Color 5: "
if /i %errorlevel%==1 SET User_New_Color_5=ffffff
SET New_Color_5=%User_New_Color_5:"=%
SET New_Color_5=%User_New_Color_5:#=%
:User_Color_5_Choice
SET /p "Color_5_Choice=#%Old_Color_5% will be changed to #%New_Color_5%. Confirm? [N]: "
if /i "%Color_5_Choice%"=="N" goto Color_5
call 
goto Process

:Process
FOR /R "%Path%" %%G in (*.%Extension%) DO (
    ECHO %%~G
    "%Magick_Path%" "%%G" -fill #%New_Color_1% -opaque #%Old_Color_1% "%%G"
    "%Magick_Path%" "%%G" -fill #%New_Color_2% -opaque #%Old_Color_2% "%%G"
    "%Magick_Path%" "%%G" -fill #%New_Color_3% -opaque #%Old_Color_3% "%%G"
    "%Magick_Path%" "%%G" -fill #%New_Color_4% -opaque #%Old_Color_4% "%%G"
    "%Magick_Path%" "%%G" -fill #%New_Color_5% -opaque #%Old_Color_5% "%%G"
)

ECHO Process Complete.
PAUSE
