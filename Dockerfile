FROM ubuntu:20.04

RUN apt update -y \
	&& apt install -y curl wget openjdk-8-jre-headless unzip \
	&& wget -P ~ https://c.jun6.net/ZFILE/zfile-release.war \
	&& cd ~ \
	&& mkdir zfile && unzip zfile-release.war -d zfile && rm -rf zfile-release.war \
	&& chmod +x ~/zfile/bin/*.sh
ENV LANG C.UTF-8
CMD ~/zfile/bin/start.sh
