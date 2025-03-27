REM Build script for testbed
@ECHO OFF
SetLocal EnableDelayedExpansion

REM Get a list of all the .c files.
SET cFilenames=
FOR /R %%f in (*.c) do (
    SET cFilenames=!cFilenames! %%f
)

REM echo "Files:" %cFilenames%

SET assembly=testbed
SET compilerFlags=-g 
REM -Wall -Werror
SET includeFlags=-Isrc -I../engine/src/
SET linkerFlags=-L../bin/ -lengine.lib
SET defines=-D_DEBUG -DKIMPORT

REM Display build information
ECHO "Building %assembly%..."
ECHO "Source files: !cFilenames!"
ECHO "Compiler flags: %compilerFlags%"
ECHO "Include flags: %includeFlags%"
ECHO "Linker flags: %linkerFlags%"
ECHO "Defines: %defines%"

REM Run the build command
clang !cFilenames! %compilerFlags% -o ../bin/%assembly%.exe %defines% %includeFlags% %linkerFlags%