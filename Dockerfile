FROM telegraf:latest
RUN apt-get update \ 
    && apt-get install curl \
    && curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash \
    && apt-get -y install speedtest \
    && speedtest --accept-license \
    && echo "done" \
WORKDIR /speedtest_output
EXPOSE 8125
EXPOSE 8092
EXPOSE 8094
EXPOSE 8186