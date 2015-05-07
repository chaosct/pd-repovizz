#!/bin/bash
virtualenv --system-site-packages env
. env/bin/activate
pip install -r requirements.txt

ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future easy_install bbfreeze

