# simple-docker-app

## Install gcloud inside the container

```shell
$ apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
$ apk add --update --no-cache py-pip \
    py-cffi \
    py-cryptography \
    && pip install --upgrade pip \
    && apk add --virtual build-deps \
    gcc \
    libffi-dev \
    python3-dev \
    linux-headers \
    musl-dev \
    openssl-dev
$ curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-373.0.0-linux-x86_64.tar.gz
$ tar -xf google-cloud-sdk-373.0.0-linux-x86_64.tar.gz
$ ./google-cloud-sdk/install.sh
$ ./google-cloud-sdk/bin/gcloud init
```