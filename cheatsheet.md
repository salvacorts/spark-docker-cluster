Build spark-knn
```
sbt update clean clean-files compile package publish-local
```

Build app with all deps
```
sbt update clean cleanFiles assembly
```

export SUSY_TRAIN_PATH=/workspace/data/susy-10k-tra.data
export SUSY_TEST_PATH=/workspace/data/susy-10k-tst.data 

spark-submit \
    --master $SPARK_MASTER \
    --class Main ./Spark-INFFC/examples/target/scala-2.12/Spark_INFFC_Examples-assembly-0.0.1.jar 

spark-shell --master $SPARK_MASTER --packages saurfang:spark-knn:0.3.0