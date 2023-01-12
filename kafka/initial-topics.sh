#!/bin/sh

kafka-topics --bootstrap-server kafka:9092 --list

kafka-topics --bootstrap-server kafka:9092 --create --topic topic-01 --partitions 3 replication-factor 1