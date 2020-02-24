docker stop nlextract-db
docker rm nlextract-db
docker image rm nlextract-db
docker build ./postgis -t nlextract-db:latest

 