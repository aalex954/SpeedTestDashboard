FROM telegraf:latest
RUN apt-get update \ 
    && apt-get -y install gnupg1 apt-transport-https dirmngr lsb-release \
    && export INSTALL_KEY=379CE192D401AB61 \
    && export DEB_DISTRO=$(lsb_release -sc) \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY \
    && echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main" | tee  /etc/apt/sources.list.d/speedtest.list \
    && apt-get update \
    && apt-get -y install speedtest \
    && speedtest --accept-license \
    && echo "done" \
WORKDIR /speedtest_output
EXPOSE 8125
EXPOSE 8092
EXPOSE 8094
EXPOSE 8186