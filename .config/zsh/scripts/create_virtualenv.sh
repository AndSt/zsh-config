#!/bin/sh

if [ -z "$1"]
then
    echo "Supply name of virtual environment."
fi
echo $PATH
mkvirtualenv -p python3.9 $1

workon $1
pip install jupyter twine pytest pandas numpy joblib
deactivate

