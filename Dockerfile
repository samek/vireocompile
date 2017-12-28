FROM ubuntu:16.04
RUN apt-get update && apt-get -y install autoconf automake build-essential pkg-config git
ADD compile.sh /compile.sh
RUN /compile.sh
