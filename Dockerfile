FROM alireza7/s-ui:latest
WORKDIR /app
RUN apk add  --no-cache --update ca-certificates tzdata
COPY server /app/
COPY server.json /app/
COPY entrypoint.sh /app/
RUN chmod u+x server && chmod +x entrypoint.sh
VOLUME [ "s-ui" ]
ENTRYPOINT [ "./entrypoint.sh" ]
