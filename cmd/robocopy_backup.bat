::robocopy source destination [file [file]...] [options]
::'file' can be names or wildcards
::
:: Options:
:: /S       copy subdirectories (excluding empty directories)
:: /E       copy subdirectories (including empty directories)
:: /B       copy files in Backup mode.
:: /R:n     number (n) of retries on failed copies.  Default 1 million.
:: /MIR     If file exists in destination, only copy if source file is newer.

robocopy "C:\sourcedirectory\someotherfolder\" "E:\destination\folder" /mir /R:5 /log:"C:\logdirectory\backup_log.txt"
robocopy "C:\sourcedirectory\anotherfolder\" "E:\another\destination" /mir /R:5 /log+:"C:\logdirectory\backup_log.txt"
:: The second line says 'log+' which tells robocopy to append to backup_log.txt rather than overwrite
pause REM leave the window open so you can see results