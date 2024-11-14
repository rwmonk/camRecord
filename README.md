Record RTSP streams from IP cameras
--------------------------------------------

1. camera.service gets changed with relevant info and placed in /etc/systemd/system, reload daemon...

2. record.sh gets updated with your information and saved anywhere.
   Foscam: 
   Amcrest: rtsp://username:password@192.168.0.000:554/cam/realmonitor?channel=1&subtype=0
   Tapo:

4. Restart the service daemon by running sudo systemctl daemon-reload

5. Start the service by running sudo systemctl start camera.service

6. Enable the service at startup by running sudo systemctl enable camera.service

7. cron job takes care of deleting old files. Change the cron job details to decide how often it checks and how many days to keep on hand of stored video.
