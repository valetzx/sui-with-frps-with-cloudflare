FROM alireza7/s-ui:latest
WORKDIR /app
RUN apk add  --no-cache --update ca-certificates tzdata
COPY frps /app/
RUN chmod u+x /app/frps
COPY frps.toml /app/
COPY entrypoint.sh /app/
VOLUME [ "s-ui" ]
ENTRYPOINT [ "./entrypoint.sh" ]
