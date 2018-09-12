#!/bin/bash
sleep 15
/usr/bin/chromium-browser --enable-native-gpu-memory-buffers --kiosk --start-maximized --incognito --disable-infobars http:/127.0.0.1/
