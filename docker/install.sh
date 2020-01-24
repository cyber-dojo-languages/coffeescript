#!/bin/sh -Eeu

apt-get update
apt-get install --yes curl
curl --silent --location https://deb.nodesource.com/setup_10.x | bash -
apt-get remove --yes curl
apt-get install --yes nodejs
npm install -global coffeescript
