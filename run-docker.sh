docker rm -f nlex

winpty docker run \
  --name nlex \
  --mount type=bind,source=/d/docker/binds/nlextract,target=/etlresult \
  nlex:latest
