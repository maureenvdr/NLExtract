#!/bin/bash
#
# Install dependencies for NLExtract
# 
# Info about dependencies can be found throughout the repo of NLExtract
# It is not listed very clearly, but it should be just Stetl.
#
# Check repo for more info: https://github.com/nlextract/NLExtract
#
# Author: William Loosman
#

apt-get update

#apt-get install -y wget
#
# Install Stetl - As described in the docs
#
# Doc: http://www.stetl.org/en/latest/install.html
#

apt-get install -y python
apt-get install -y python-setuptools
apt-get install -y python-dev
apt-get install -y python-pip

pip install --upgrade pip

apt-get install -y python-libxml2
apt-get install -y python-libxslt1
apt-get install -y libxml2-dev libxslt1-dev lib32z1-dev
apt-get install -y python-lxml

apt-get install -y gdal-bin
apt-get install -y python-gdal

apt-get install -y python-psycopg2

apt-get install -y python-jinja2
