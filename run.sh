#!/bin/bash

pip3 install -r /code/requirements.txt
uwsgi /code/project.ini
