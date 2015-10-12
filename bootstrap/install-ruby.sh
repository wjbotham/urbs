#!/usr/bin/env bash

source /usr/local/rvm/scripts/rvm
rvm install 2.2.3

cd /vagrant
rvm use 2.2.3

gem install bundler
