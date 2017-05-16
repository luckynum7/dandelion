FROM timefairy/erlang

## elixir

RUN /bin/bash -c "asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git && \
                  asdf install elixir 1.4.4 && \
                  asdf global elixir 1.4.4 && \
                  rm -rf  /tmp/*"
