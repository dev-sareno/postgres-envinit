FROM docker.io/postgres:15-alpine
COPY --chmod=755 ./hook.sh /usr/local/bin/hook.sh

CMD [ "/bin/sh", "-c", "hook.sh && docker-entrypoint.sh postgres" ]
