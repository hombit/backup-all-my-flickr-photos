FROM python:3-alpine

COPY . /app/
WORKDIR /app
RUN python setup.py install

VOLUME "/Flickr"

ENTRYPOINT ["/app/docker-entrypoint.sh", "/Flickr"]
