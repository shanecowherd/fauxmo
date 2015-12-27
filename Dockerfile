FROM ubuntu
RUN apt-get update && \
apt-get install git python python-pip python-dev build-essential -y && \
git clone http://github.com/shanecowherd/fauxmo
ENTRYPOINT python /fauxmo/fauxmo/py
