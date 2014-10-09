uwsgi python3 docker image
=====

This is an image that runs [uWSGI](http://uwsgi-docs.readthedocs.org/).
This is built on Ubuntu 14.04 with Python3 in a virtualenv

Usage
-----

To run this docker image successfully, you will need three things:

* A WSGI application 
* A requirements file called requirements.txt
* A uwsgi ini configuration file called project.ini

The requirements file should contain all your dependencies (such as Django,
Flask, Pyramid, Pillow, etc.). The requirements file is called
``reqirements.txt`` and should live at the root of the project. **This file is
required, even if empty**.

The uwsgi configuration file should be in ini format, called project.ini, and located in the root of your project

```
docker run --volume /path/to/code:/code ensignavenger/uwsgi
```
