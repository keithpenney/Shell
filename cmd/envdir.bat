:: Environment variables demo
@Echo off
Setlocal
set MyDir="C:\Users\kpenney\Desktop\Keith Penney\"
set YourDir=%1
echo My directory is %MyDir%
echo Your directory is %YourDir%
dir %YourDir% > testing.txt

Endlocal