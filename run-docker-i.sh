docker rm -f nlex

winpty docker run -it \
  --name nlex \
  --mount type=bind,source=/d/docker/binds/nlextract,target=/etlresult \
  nlextract:latest
