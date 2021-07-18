FROM salvacorts/spark-base

COPY master.sh /master.sh
RUN chmod +x /master.sh

ENTRYPOINT [ "/master.sh" ]