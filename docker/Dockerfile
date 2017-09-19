FROM  cyberdojofoundation/ubuntu-build-essential:17.04
LABEL maintainer=jon@jaggersoft.com

RUN apt-get update

RUN apt-get install --yes curl \
 && curl --silent --location https://deb.nodesource.com/setup_8.x | bash - \
 && apt-get remove --yes curl \
 && apt-get install --yes nodejs \
 && npm install -global coffee-script

RUN npm info coffeescript version | grep -q 2.0.0
