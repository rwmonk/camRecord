#!/bin/bash

        ffmpeg -rtsp_transport tcp \
        -timeout 3000000 \
        -i rtsp://username:password@192.168.0.100:88/videoMain  \
        -f segment \
        -segment_time 1800 \
        -reset_timestamps 1 \
        -c:v copy \
        -strftime 1 \
        %Y-%m-%d_%H-%M-%S.mp4
