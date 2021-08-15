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
        /workspace/data/susy-10k-tra.data \
        /workspace/data/susy-10k-tst.data \
        0.2

spark-shell --master $SPARK_MASTER