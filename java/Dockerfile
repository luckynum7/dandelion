FROM timefairy/pgbase

## sdkman

RUN /bin/bash -c "curl -s \"https://get.sdkman.io\" | bash && \
                  source \"$HOME/.sdkman/bin/sdkman-init.sh\" && \
                  echo sdkman_auto_answer=true | tee -a ~/.sdkman/etc/config && \
                  sdk flush archives && \
                  sdk flush temp"

## java

ENV JAVA_HOME="/home/asdf/.sdkman/candidates/java/current"

ENV PATH=${JAVA_HOME}/bin:$PATH

RUN /bin/bash -c "source \"$HOME/.sdkman/bin/sdkman-init.sh\" && \
                  sdk install java 8u121 && \
                  sdk flush archives && \
                  sdk flush temp"

## gradle

ENV GRADLE_HOME="/home/asdf/.sdkman/candidates/gradle/current" GRADLE_USER_HOME="/build/.gradle"

ENV PATH=${GRADLE_HOME}/bin:$PATH

RUN /bin/bash -c "source \"$HOME/.sdkman/bin/sdkman-init.sh\" && \
                  sdk install gradle 2.14.1 && \
                  sdk flush archives && \
                  sdk flush temp"
