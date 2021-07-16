FROM salvacorts/spark-base

COPY worker.sh /worker.sh
RUN chmod +x /worker.sh

ENTRYPOINT [ "/worker.sh" ]