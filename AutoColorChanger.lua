-- Simple script for Aseprite to automatically open files and change specific colors. Made for Doloc Town, but can be used on any image in Aseprite! --
-- Make any modifications you want! -- API documentation: https://github.com/aseprite/api --

-- Change the colors and the folder path before running it! --
-- BE CAREFUL WHICH FOLDER YOU POINT IT AT! Swapping the "From" and "To" colors won't always fix it! --
-- This script will do nothing to non-image files as Aseperite cannot open them. --

-- To use this script, make sure you own Aseprite first! Then, open Aseprite and go to "File" in the top right. --
-- Next hover over "Scripts", then click "Open Scripts Folder". Stick this file inside that folder, then go back to Aseprite and press F5 to reload the script folder. --
-- Finally, go back to the "Scripts" tab and click the script to run it! --
-- Make sure to adjust the folder paths to where you have the animations from the example mod! --

-- Colors are currently set to take in an RGB color and output an HSV color, both with alpha. --
-- You can also change more or less than 4 colors at once! Simply copy and paste or delete! --

-- NOTE: The file searching is set to check 2 folders deep before accessing images. Basically it goes "Main Folder" > "Sub Folder" > "Images". --
-- If you want it to go "Main Folder" > "Images", follow the comment inscructions below. --

do
    local dir = app.fs.joinPath("C:","Example1","Example2","Example3","Example4")
    for _,filename in pairs(app.fs.listFiles(dir)) do
        local subdir = app.fs.joinPath(dir,filename) -- Remove or comment out --
        for _,filename2 in pairs(app.fs.listFiles(subdir)) do -- Remove or comment out --
            local files = app.fs.joinPath(subdir,filename2) -- Change "subdir" to "dir" and "filename2" to "filename" --
            print(files)
            app.command.OpenFile{
                ui=false,
                filename=files,
                sequence="no"
            }
            app.command.ReplaceColor{
                ui=false,
                from=Color{r=255,g=255,b=255,a=255},
                to=Color{h=360,s=1.0,v=1,a=255}
            }
            app.command.ReplaceColor{
                ui=false,
                from=Color{r=255,g=255,b=255,a=255},
                to=Color{h=360,s=1.0,v=1,a=255}
            }
            app.command.ReplaceColor{
                ui=false,
                from=Color{r=255,g=255,b=255,a=255},
                to=Color{h=360,s=1.0,v=1,a=255}
            }
            app.command.ReplaceColor{
                ui=false,
                from=Color{r=255,g=255,b=255,a=255},
                to=Color{h=360,s=1.0,v=1,a=255}
            }
            app.command.SaveFile{}
        end -- Remove or comment out --
    end 
end