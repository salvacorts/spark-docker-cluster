#!/bin/bash
source "${SPARK_HOME}/sbin/spark-config.sh"
source "${SPARK_HOME}/bin/load-spark-env.sh"

if [ "$SPARK_MASTER" = "" ]; then
    echo "SPARK_MASTER is not set"
    exit 1
fi

if [ "$SPARK_WORKER_WEBUI_PORT" = "" ]; then
    SPARK_WORKER_WEBUI_PORT=8080
fi

cmd="${SPARK_HOME}/bin/spark-class org.apache.spark.deploy.worker.Worker \
    --webui-port $SPARK_WORKER_WEBUI_PORT $@ $SPARK_MASTER"

echo $cmd
exec $cmd