FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install wget unzip -y
WORKDIR /opt/
RUN wget https://github.com/kaspanet/rusty-kaspa/releases/download/v0.15.1-rc4/rusty-kaspa-v0.15.1-rc4-linux-musl-amd64.zip
RUN unzip rusty-kaspa-v0.15.1-rc4-linux-musl-amd64.zip
RUN mv bin/* /usr/bin/
CMD /usr/bin/kaspad --utxoindex --disable-upnp
