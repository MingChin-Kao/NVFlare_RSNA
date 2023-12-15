#!/bin/bash

SITE_NAME=site-1
FILEID=1wFcgTnRQX7WJN7HwHOYPPdBRpjNruIMH
FILENAME=${SITE_NAME}-datas.zip

# 添加deadsnakes PPA並安裝Python 3.8
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install python3.8 -y

# 確認Python版本
python3.8 --version

# 安裝完成
echo "Python 3.8已安裝"

# 安裝venv套件
sudo apt update
sudo apt-get install wget unzip python3.8-dev python3.8-venv
sudo apt-get install ffmpeg libsm6 libxext6  -y


cd ~

# 創建名為rsna的Python 3.8虛擬環境
python3.8 -m venv rsna

# 啟動虛擬環境
source rsna/bin/activate

# update pip version
pip install --upgrade pip

# 確認Python版本
python --version

# 虛擬環境安裝完成
echo "Python 3.8虛擬環境rsna安裝完成。"
echo "您可以使用以下命令啟動虛擬環境："
echo "source rsna/bin/activate"

# Download File

cd ~

wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=${fileid}' -O- | sed -rn 's/.confirm=([0-9A-Za-z_]+)./\1\n/p')&id=${FILEID}" -O ${FILENAME} && \rm -rf /tmp/cookies.txt

rm -r ${SITE_NAME}-datas

# Unzip
unzip -q ${FILENAME}

rm ${FILENAME}

cd ${SITE_NAME}-datas

pip install -r requirements.txt

cd ~

rm -r rsna/lib/python3.8/site-packages/nvflare

cp -r ${SITE_NAME}-datas/nvflare ./rsna/lib/python3.8/site-packages/


echo "Finish Preprocess!"