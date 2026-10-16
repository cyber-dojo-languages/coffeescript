#!/bin/sh -Eeu

#apt-get update
#apt-get install --yes curl
#curl --silent --location https://deb.nodesource.com/setup_10.x | bash -
#apt-get remove --yes curl
#apt-get install --yes nodejs
npm install -global coffeescript

# Records the CoffeeScript this image holds, in the shape every image shares.
# The installed compiler is asked, so the version is one the image can run
# rather than one written down when someone last edited this file.
# coffee --version prints "CoffeeScript version 2.7.0".
readonly LANGUAGE_VERSION=$(coffee --version | cut -d' ' -f3)

if [ -z "${LANGUAGE_VERSION}" ]; then
  echo 'Could not read a version from coffee --version' >&2
  exit 1
fi

cat > /versions.json <<EOF
{
  "language": {
    "name": "CoffeeScript",
    "version": "${LANGUAGE_VERSION}"
  },
  "test_frameworks": []
}
EOF
