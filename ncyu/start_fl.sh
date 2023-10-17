#!/bin/bash

SITE_NAME=site-1

cd ~

# 啟動虛擬環境
source rsna/bin/activate

cd ${SITE_NAME}-datas/${SITE_NAME}/startup/

bash start.sh
