Build spark-knn
```
sbt update clean clean-files compile package publish-local
```

Build app with all deps
```
sbt update clean clean-files assembly
```

spark-submit --master $SPARK_MASTER --class SimpleApp ./target/scala-2.12/Foo_Application-assembly-1.0.jar

spark-shell --master $SPARK_MASTER --packages saurfang:spark-knn:0.3.0