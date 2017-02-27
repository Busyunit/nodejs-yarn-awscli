FROM mhart/alpine-node:base
# FROM mhart/alpine-node:6

MAINTAINER Eteng omini <eteng@busyunit.com>

ENV PATH /root/.yarn/bin:$PATH

RUN apk update \
  && apk add curl bash binutils tar \
  && rm -rf /var/cache/apk/* \
  && /bin/bash \
  && touch ~/.bashrc \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
#  && apk add python2 py2-pip -qq \
#  && pip install awscli \
  && apk del curl tar binutils 
RUN apk add python py-pip -qq 
#RUN apk add --no-cache make gcc g++ 
#RUN apk add python py-pip zip -qq
#RUN pip install awscli
#RUN yarn --version
