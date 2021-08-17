Build spark-knn
```
sbt update clean clean-files compile package publish-local
```

Build app with all deps
```
sbt update clean cleanFiles assembly
```

spark-submit \
    --master $SPARK_MASTER \
    --class Main /workspace/Spark-INFFC/examples/target/scala-2.12/Spark_INFFC_Examples-assembly-0.0.1.jar \
        file:///workspace/data/susy-10k-tra.data \
        file:///workspace/data/susy-10k-tst.data \
        0.2

spark-shell --master $SPARK_MASTER

Hadoop UGR Cluster

/opt/spark-3.0.1/bin/spark-submit \
    --master spark://hadoop-master:7077 \
    --total-executor-cores 14 \
    --executor-memory 8g \
    --jars /home/x75935233/tfm/MultiClassSummarizer.jar \
    --class Main /home/x75935233/tfm/Spark_INFFC_Examples-assembly-0.0.1.jar \
        hdfs:///user/datasets/master/susy/susyMaster-Train.data \
        hdfs:///user/datasets/master/susy/susyMaster-Test.data \
        0.2
