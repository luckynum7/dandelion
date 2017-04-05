FROM timefairy/java

# android tools

ENV ANDROID_HOME="/home/asdf/android-sdk" \
    ANDROID_TARGET_SDK=24 \
    ANDROID_BUILD_TOOLS=25.0.2 \
    ANDROID_SDK_TOOLS=25.2.5

ENV PATH=${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:$PATH

RUN curl -L https://dl.google.com/android/repository/tools_r${ANDROID_SDK_TOOLS}-linux.zip -o /tmp/tools.zip && \
    mkdir -p ${ANDROID_HOME} && \
    unzip /tmp/tools.zip -d ${ANDROID_HOME} && \
    chmod -R o=g ${ANDROID_HOME} && \
    find ${ANDROID_HOME} -perm 744 -exec chmod 755 {} + && \
    rm -rf /tmp/*

RUN echo y | android --silent update sdk --no-ui --all --filter extra-android-m2repository && \
    echo y | android --silent update sdk --no-ui --all --filter extra-google-google_play_services && \
    echo y | android --silent update sdk --no-ui --all --filter extra-google-m2repository

RUN echo y | android --silent update sdk --no-ui --all --filter platform-tools
RUN echo y | android --silent update sdk --no-ui --all --filter android-${ANDROID_TARGET_SDK}
RUN echo y | android --silent update sdk --no-ui --all --filter build-tools-${ANDROID_BUILD_TOOLS}
