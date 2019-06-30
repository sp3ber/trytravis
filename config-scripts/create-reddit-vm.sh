#!/usr/bin/env bash
gcloud compute instances create reddit-app\
  --image-family reddit-base \
  --machine-type=g1-small \
  --restart-on-failure \
  --metadata-from-file startup-script=./deploy.sh
