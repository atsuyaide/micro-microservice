#!/bin/sh

kafka-topics --bootstrap-server kafka:9092 --list

echo 'Creating kafka topics'
kafka-topics --bootstrap-server kafka:9092 --create --topic topic-01 --partitions 3 replication-factor 1
kafka-topics --bootstrap-server kafka:9092 --create --topic topic-02 --partitions 3 replication-factor 1

echo 'Successfully created the following topics:'
kafka-topics --bootstrap-server kafka:9092 --list
