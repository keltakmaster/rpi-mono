FROM balenalib/rpi-raspbian
MAINTAINER keltakmaster

RUN \
 apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
 echo "deb http://download.mono-project.com/repo/debian jessie main" | tee /etc/apt/sources.list.d/mono-official.list && \
 apt-get update && \
 apt-get install -y \
	wget mono-devel libcurl4-openssl-dev && \
# cleanup
 apt-get clean && \
 rm -rf \
	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*
