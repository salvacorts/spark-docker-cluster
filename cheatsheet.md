Build spark-knn
```
sbt update clean clean-files compile package publish-local
```

Build app with all deps
```
sbt update clean cleanFiles assembly
```

spark-submit --master $SPARK_MASTER --class Main ./target/scala-2.12/Spark-INFFC-assembly-0.0.1.jar

spark-shell --master $SPARK_MASTER --packages saurfang:spark-knn:0.3.0