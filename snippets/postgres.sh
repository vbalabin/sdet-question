docker run \
  --name postgres-d \
  --detach \
  --restart unless-stopped \
  --network sdet \
  --network-alias postgres\
  --env POSTGRES_PASSWORD=postgres \
  --env POSTGRES_USER=postgres \
  --env POSTGRES_DB=allure \
  --publish 5432:5432 \
  --volume ps-data:/var/lib/postgresql/data \
  postgres:latest \

