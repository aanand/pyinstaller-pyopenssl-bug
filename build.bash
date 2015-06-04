#!/bin/bash

set -e

echo "
*** Installing requirements ***
"
pip install -r requirements.txt

mkdir -p `pwd`/dist
chmod 777 `pwd`/dist

echo "
*** Building binary ***
"
pyinstaller -F bin/main

echo "
*** Running binary ***
"
dist/main
