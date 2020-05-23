#!/bin/sh

if [ -z "$1" ]
then
    echo "Supply parameter for github cloning."
    exit 1
fi

git clone $1
retr_dir="$(echo $1 | awk -F/ '{print $NF}' | awk -F. '{print $1}')"
dir_name="${retr_dir}"

if [ ! -d $dir_name  ]
then
    echo 'Directory $dir_name does not exist, probably cloning went wrong.'
    exit 1
fi

# create virtualenv and install basics
cd $dir_name
mkvirtualenv -p python3.7 $dir_name
workon $dir_name
pip install jupyter
[ -f "requirements.txt" ] && pip install -r requirements.txt

# go back to previous situation
deactivate
cd ..
echo "Sucessfully cloned $dir_name.git and installed basic python setup."
