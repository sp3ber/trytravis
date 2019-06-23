#!/usr/bin/env bash

port_to_open="9292" # При необходимости вынести в опции вызова

gcloud compute firewall-rules create default-puma-server \
    --allow=tcp:$port_to_open \
    --target-tags=puma-server \
    --destination-ranges=0.0.0.0/0
