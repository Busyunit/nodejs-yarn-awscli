FROM mhart/alpine-node:base-6
# FROM mhart/alpine-node:6

MAINTAINER Eteng omini <eteng@busyunit.com>

ENV PATH /root/.yarn/bin:$PATH

RUN apk update \
  && apk add --no-cache curl bash binutils tar \
  && rm -rf /var/cache/apk/* \
  && /bin/bash \
  && touch ~/.bashrc \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
  && apk del curl tar binutils \
  && apk add python py-pip zip -qq \
  && pip install awscli 

#RUN apk add --no-cache make gcc g++ 
#RUN apk add python py-pip zip -qq
#RUN pip install awscli
#RUN yarn --version
