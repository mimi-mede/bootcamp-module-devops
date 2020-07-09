#!/bin/bash -xe

yum install -y python37
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
yum install -y git
git clone https://github.com/mimi-mede/bootcamp-module-devops.git
cd /bootcamp-module-devops/backend/
/usr/local/bin/pip install -r requirements.txt
nohup /usr/local/bin/gunicorn -w 3 -b 0.0.0.0:8080 app:app &
