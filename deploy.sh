#!/bin/bash

command -v pip >/dev/null 2>&1 || { echo "pip not found, install with 'sudo easy_install pip'" >&2; exit 1; }
command -v virtualenv >/dev/null 2>&1 || { echo "virtualenv not found. Install with pip install virtualenv" >&2; exit 1; }

virtualenv --system-site-packages env
env/bin/pip install -r requirements.txt

ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future env/bin/easy_install bbfreeze

