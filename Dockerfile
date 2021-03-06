FROM python:alpine
RUN apk add --no-cache make && pip install Sphinx
COPY entrypoint.sh /entrypoint.sh
VOLUME ["/docs"]
EXPOSE 8000
USER 1000:1000
ENTRYPOINT ["/entrypoint.sh"]
