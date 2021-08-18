@ECHO OFF
ECHO %CHECK started%
SET source=%1
SET dest=%2
SET log_dir=%3
SET phase=%4
SET date_name=%date:~12,2%%date:~4,2%%date:~7,2%
ECHO %date_name%
ECHO Executing %command%

SET command=rclone check %source% %dest% --missing-on-dst %log_dir%\%date_name%_%phase%_missing_on_dst.txt --size-only --log-file log_dir%\%date_name%_%phase%_check_log.txt --log-level=NOTICE

ECHO %command%
%command%
ECHO %CHECK completed%
SLEEP 5