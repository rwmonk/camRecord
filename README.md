Record RTSP streams from FOSCAM IP cameras
--------------------------------------------

1. camera.service gets changed with relevant info and placed in /etc/systemd/system, reload daemon...

2. record.sh gets updated with your information and saved anywhere.

3. Restart the service daemon by running sudo systemctl daemon-reload

4. Start the service by running sudo systemctl start camera.service

5. Enable the service at startup by running sudo systemctl enable camera.service

6. cron job takes care of deleting old files. Change the cron job details to decide how often it checks and how many days to keep on hand of stored video.
