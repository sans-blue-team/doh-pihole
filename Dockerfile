FROM ubuntu:latest

RUN apt update && apt-get install wget -y
RUN wget https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.deb -O /tmp/cloudflared.deb && \
    apt install /tmp/cloudflared.deb
EXPOSE 5053/udp
EXPOSE 49312/tcp
CMD cloudflared proxy-dns --port 5053 --address 0.0.0.0
