#!/bin/sh

# Don't forget to change the registration token !
# Get the registration token from:
# http://${gitlab-url}:${port}/root/${project}/settings/ci_cd

docker exec -it gitlab-runner \
  gitlab-runner register \
    --non-interactive \
    --registration-token emx6-zNw7ayYNB-V_jFW \
    --locked=false \
    --url http://gitlab-web:8088/ \
    --clone-url http://gitlab-web:8088/ \
    --description docker-runner \
    --tag-list docker \
    --run-untagged=true \
    --executor docker \
    --docker-image docker:19-git \
    --docker-volumes /var/run/docker.sock:/var/run/docker.sock \
    --docker-network-mode gitlab-network
