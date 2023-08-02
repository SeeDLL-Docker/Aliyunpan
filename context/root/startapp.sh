#!/bin/bash

YunPanPath=/opt/xbyyunpan/xbyyunpan

echo "Start XBYYuanPan"
if [ "$(uname -m)" = "aarch64" ];then
  $YunPanPath --disable-gpu-sandbox --no-sandbox
else
  $YunPanPath --no-sandbox
fi
echo "XBYYuanPan over"