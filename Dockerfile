FROM alireza7/s-ui:latest
WORKDIR /app
ENV TOKEN null
RUN apk add  --no-cache --update ca-certificates tzdata
COPY frps /app/
COPY cf /app/
COPY s-ui.db /app/db/
COPY frps.toml /app/
COPY entrypoint.sh /app/
RUN chmod u+x frps && chmod +x entrypoint.sh
VOLUME [ "s-ui" ]
ENTRYPOINT [ "./entrypoint.sh" ]
