

Step 1:
    Copy files from the FontFiles folder in this project to:
    Droid:
        Assets folder add the files as android assets.
    iOS:
        Resource folder -> create Sub folder called Fonts and add the files as bundle resources.

Step 2:

    iOS:
        In the info.plist add under the source tab a category called 'Fonts provided by application' (Array type)
        Add to the array a string entry for each font file (i.e. Fonts/fontawesome.ttf)
