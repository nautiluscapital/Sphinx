FROM python:alpine
RUN apk add --no-cache make && pip install Sphinx
COPY entrypoint.sh /entrypoint.sh
VOLUME ["/docs"]
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
