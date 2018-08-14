:: Rename all in folder
:: Calls rnx.bat (edit that to set the file extensions to change)

SET NAMES=(dir)
FOR /F "usebackq delims=|" %%F IN (`dir /b`) do call rnx.bat %%F
