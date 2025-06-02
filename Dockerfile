FROM alireza7/s-ui:latest
WORKDIR /app
ENV TOKEN pig
RUN apk add  --no-cache --update ca-certificates tzdata
COPY etcore /app/
COPY s-ui.db /app/db/
COPY entrypoint.sh /app/
RUN chmod u+x etcore && chmod +x entrypoint.sh
VOLUME [ "s-ui" ]
ENTRYPOINT [ "./entrypoint.sh" ]