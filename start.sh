#!/usr/bin/env sh

# run app on mac os

limactl start &
sleep 5
export DOCKER_HOST=$(limactl list docker --format 'unix://{{.Dir}}/sock/docker.sock')

docker-compose up -d

google-chrome --incognito --disable-gpu --app=http://localhost:3000

docker-compose down

limactl stop
