docker run \
  --name allure-server-d \
  --detach \
  --restart unless-stopped \
  --network sdet \
  --network-alias allure-server \
  --env SPRING_DATASOURCE_URL=jdbc:postgresql://postgres:5432/allure \
  --env SPRING_DATASOURCE_USERNAME=postgres \
  --env SPRING_DATASOURCE_PASSWORD=postgres \
  --env SPRING_JPA_DATABASE=postgresql \
  --env SPRING_JPA_HIBERNATE_DDL-AUTO=update \
  --publish 8080:8080 \
  --volume $PWD/ext:/ext:rw \
  --volume $PWD/allure-server-store:/allure:rw \
  kochetkovma/allure-server:latest

