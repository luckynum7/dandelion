FROM timefairy/android-tools

ENV PATH=/home/asdf/.asdf/bin:/home/asdf/.asdf/shims:$PATH

# Ref: https://github.com/nodejs/docker-node
# gpg keys listed at https://github.com/nodejs/node#release-team
RUN set -ex \
  && for key in \
    9554F04D7259F04124DE6B476D5A82AC7E37093B \
    94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \
    FD3A5288F042B6850C66B31F09FE44734EB7990E \
    71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \
    DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
    B9AE9905FFD7803F25714661B63B535A4C206CA9 \
    C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 \
    56730D5401028683275BD23C23EFEFE93C4CFFFE \
  ; do \
    gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; \
  done

## asdf, nodejs
RUN /bin/bash -c "git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0 && \
                  asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git && \
                  asdf install nodejs 7.10.0 && \
                  asdf global nodejs 7.10.0 && \
                  rm -rf $HOME/.npm && \
                  rm -rf /tmp/*"

## phonegap

RUN /bin/bash -c "npm install -sg cordova@7.0.1 \
                                  cordova-icon@0.9.1 && \
                  rm -rf $HOME/.npm && \
                  rm -rf /tmp/*"

## /build
WORKDIR /build
VOLUME ["/build"]
