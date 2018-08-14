:: Rename single filename extension
:: Filename is passed as an argument
:: Replace ".abc" and ".def" with the two file extensions to toggle
@Echo off
SetLocal
set fn=%~n1
rem Grab the filename
set ex=%~x1
rem Grab extension only
set exn=%ex%
echo %ex%
If %ex%==.abc (set exn=.def)
If %ex%==.def (set exn=.abc)

@Echo on
move ./%~nx1 ./%fn%%exn%

EndLocal