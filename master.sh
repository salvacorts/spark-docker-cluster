#!/bin/bash
source "${SPARK_HOME}/sbin/spark-config.sh"
source "${SPARK_HOME}/bin/load-spark-env.sh"

if [ "$SPARK_MASTER_PORT" = "" ]; then
    SPARK_MASTER_PORT=7077
fi

if [ "$SPARK_MASTER_WEBUI_PORT" = "" ]; then
    SPARK_MASTER_WEBUI_PORT=8080
fi

cmd="${SPARK_HOME}/bin/spark-class org.apache.spark.deploy.master.Master \
    --ip `hostname` \
    --port $SPARK_MASTER_PORT \
    --webui-port $SPARK_MASTER_WEBUI_PORT \
    $@"

echo $cmd
exec $cmd