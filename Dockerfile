FROM mhart/alpine-node:base-6
# FROM mhart/alpine-node:6

MAINTAINER Eteng omini <eteng@busyunit.com>

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN apk add --no-cache make gcc g++ 
RUN apk add python py-pip zip -qq
RUN pip install awscli
RUN yarn --version
