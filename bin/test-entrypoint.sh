#!/bin/bash
export PATH=$PATH:~/.local/bin
./bin/getconfig.sh
python ./transDjango/manage.py migrate --noinput
#python ./transDjango/manage.py test --noinput
