@ECHO OFF
SET source=%1
SET dest=%2
SET log_dir=%3

CALL rclone_check_task.bat %source% %dest% %log_dir% PRE_COPY
CALL rclone_copy_task.bat %source% %dest% %log_dir%
CALL rclone_check_task.bat %source% %dest% %log_dir% POST_COPY
