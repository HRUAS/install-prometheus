#!/bin/bash

mkdir -p $HOME/prometheus
touch $HOME/prometheus/prometheus.yml

sudo chown -R 1001:1001 $HOME/prometheus-persistence
sudo chmod -R 775 $HOME/prometheus-persistence

docker-compose up
