FROM python:3.7.3-alpine

# setup working directory
ENV WORKER_APP_DIR='/app' \
    PATH="$PATH:/app"
WORKDIR "/app"

# setup group/user
RUN set -ex \
    && addgroup -g '1000' -S 'worker' \
    && adduser -u '1000' -G 'worker' -S -s '/bin/false' -h '/app' 'worker'


CMD ["python", "-m", "app"]

# docker build . -t volume_app:latest
# docker run --rm --name=volume_app -v "$PWD":/app volume_app:latest
