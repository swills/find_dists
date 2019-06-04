#!/bin/sh

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

DIR=$(mktemp -d)
cd ${DIR} 
python -m venv .
./bin/pip install distlib
./bin/pip install celery
./bin/python ${SCRIPTPATH}/find_dists.py
