FROM ubuntu:16.04
MAINTAINER Jonathan Melville <jonathan@jonathanmelville.com>

RUN apt-get -y update && apt-get install -y \
        curl \
        sudo \
        nodejs \
        npm \
        git \
        fontconfig

RUN echo '{ "allow_root": true }' > /root/.bowerrc && ln -s /usr/bin/nodejs /usr/bin/node && sudo npm install -g gulp-cli grunt-cli bower

ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
