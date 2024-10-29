#!/bin/bash

ffmpeg -rtsp_transport tcp \
	-stimeout 3000000 \
	-i rtsp://yourusername:yourpassword@camip:88/videoMain \
	-i rtsp://yourusername:yourpassword@camip:88/audio \
	-f segment \
	-segment_time 1800 \
	-vsync vfr \
	-reset_timestamps 1 \
	-c copy \
	-strftime 1 \
	camera_%Y-%m-%d_%H-%M-%S.mkv