docker run \
  --name selenoid-d-ui \
  --detach \
  --restart unless-stopped \
  --network sdet \
  --network-alias selenoid-ui\
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --volume docker-certs:/certs/client:ro \
  --publish 8088:8080 \
  aerokube/selenoid-ui \
  --selenoid-uri http://selenoid:4444

