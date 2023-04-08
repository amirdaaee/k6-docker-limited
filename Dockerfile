FROM grafana/k6
USER root
RUN apk add --no-cache iproute2

COPY run.sh .
COPY limit-tc.sh .
RUN chmod +x run.sh &&\
    chmod +x limit-tc.sh
ENTRYPOINT ["/home/k6/run.sh"]
