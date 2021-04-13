FROM apache/nifi

ENV LC_ALL=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

USER root

RUN apt-get -y update && apt-get -y upgrade && \
	apt-get -y install openssh-client python3

USER nifi

WORKDIR "/opt/nifi/nifi-current"
ENTRYPOINT ["../scripts/start.sh"]

