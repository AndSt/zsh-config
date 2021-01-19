#!/bin/bash

if [ -z "$1" ]; then
    echo "Set template name."
    exit 1
fi

mkdir $1
cp $PHD/latex/notes_template/* $1
mv $1/notes_template.tex $1/$1.tex



