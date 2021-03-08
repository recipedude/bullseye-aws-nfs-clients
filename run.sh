#!/bin/sh

docker run -d --name nfs-client --privileged=true --env-file config.env recipedude/bullseye-aws-nfs-clients:latest sleep 999999
