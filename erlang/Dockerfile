FROM timefairy/phxbase

ENV PATH=/home/asdf/.asdf/bin:/home/asdf/.asdf/shims:$PATH

## asdf, erlang

RUN /bin/bash -c "git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.2.1 && \
                  asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git && \
                  asdf install erlang 19.3 && \
                  asdf global erlang 19.3 && \
                  rm -rf  /tmp/*"
