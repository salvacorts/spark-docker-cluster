#!/bin/bash
docker build -f base.dockerfile -t salvacorts/spark-base . 
docker build -f master.dockerfile -t salvacorts/spark-master .
docker build -f worker.dockerfile -t salvacorts/spark-worker .