from grafana/k6
USER root
RUN apk add --no-cache iproute2

COPY run.sh .
RUN chmod +x run.sh 
# USER 12345
ENTRYPOINT ["/home/k6/run.sh"]
