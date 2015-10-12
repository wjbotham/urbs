#!/usr/bin/env bash

# These are dependencies for the nokogiri gem.
# TODO: Are libxslt-dev and libxml2-dev actually required with nokogiri 1.6+?
apt-get install -y zlib1g-dev libxslt-dev libxml2-dev 

# Dependency for mysql2 gem
apt-get install -y libmariadbclient-dev

cd /vagrant
bundle install
