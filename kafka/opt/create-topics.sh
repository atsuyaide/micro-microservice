#!/bin/sh

kafka-topics --bootstrap-server kafka:9092 --list

# 追加
kafka-topics --bootstrap-server kafka:9092 --create --topic topic-01 --partitions 3 replication-factor 1
kafka-topics --bootstrap-server kafka:9092 --create --topic topic-02 --partitions 3 replication-factor 1