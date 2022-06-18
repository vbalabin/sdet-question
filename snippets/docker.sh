docker run \
  --name sdet-dind \
  --detach \
  --privileged \
  --restart unless-stopped \
  --network sdet \
  --network-alias docker \
  --env DOCKER_TLS_CERTDIR=/certs \
  --volume docker-certs:/certs/client \
  --volume sdet-data:/var/sdet_home \
  --volume lib-docker:/var/lib/docker \
  --publish 3000:3000 \
  --publish 2376:2376 \
  docker:dind \
  --storage-driver overlay2 \
  
