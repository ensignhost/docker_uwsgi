uwsgi python3 docker image
=====

This is an image that runs [uWSGI](http://uwsgi-docs.readthedocs.org/).
This is built on Ubuntu 14.04 and provides for the option to run your applications in virtualenvs, as well as under python2.7 or python3.  In fact, using setup.sh and project.ini, you could specify just about any valid uwsgi setup, so you aren't just limited to python applications!

Usage
-----

To run this docker image successfully, you will need four things:

* A WSGI application in your code dir
* A requirements file called requirements.txt in your code dir
* A uwsgi ini configuration file called project.ini in your code dir
* a setup.sh bash script in your code dir

The requirements file should contain all your dependencies (such as Django,
Flask, Pyramid, Pillow, etc.). The requirements file is called
``reqirements.txt`` and should live at the root of the project. **This file is
required, even if empty**.

The uwsgi configuration file should be in ini format, called project.ini, and located in the root of your project

setup.sh will be executed immediatly prior to starting uwsgi

```
docker run --volume /path/to/code:/code ensignavenger/uwsgi-py3
```
