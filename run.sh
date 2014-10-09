#!/bin/bash

vex --cwd /code --make --python python3 project pip install -r requirements.txt
vex --cwd /code project uwsgi project.ini
