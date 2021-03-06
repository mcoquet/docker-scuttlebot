FROM node:12.9.1

LABEL maintainer="miguel@mcoquet.com"

RUN npm install -g ssb-server@15.3

ADD scripts/run-sbot.sh /run-sbot.sh

RUN chmod +x /run-sbot.sh

EXPOSE 8008

CMD [ "/run-sbot.sh" ]
