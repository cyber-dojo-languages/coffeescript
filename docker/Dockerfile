FROM  cyberdojofoundation/javascript-node:8.4.0
LABEL maintainer=jon@jaggersoft.com

RUN npm install -g coffee-script > version-log.txt

RUN cat version-log.txt | grep -q coffee-script@1.12.7
