@ECHO OFF
ECHO %CHECK started%
SET source=%1
SET dest=%2
SET log_dir=%3
SET date_name=%date:~12,2%%date:~4,2%%date:~7,2%
ECHO %date_name%


SET command=rclone copy %source% %dest% --size-only --log-file %log_dir%\%date_name%_copy_log.txt --log-level=INFO --transfers=16 --checkers=16 --fast-list
ECHO Executing %command%

ECHO %command%
%command%
ECHO %COPY completed%
SLEEP 5