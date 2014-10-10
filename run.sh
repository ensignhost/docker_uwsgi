#!/bin/bash

pip3 install -r requirements.txt
uwsgi /code/project.ini
