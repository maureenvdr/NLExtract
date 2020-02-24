docker rm -f nlextract

winpty docker run \
  --name nlextract \
  --mount type=bind,source=/d/docker/binds/nlextract,target=/etlresult \
  nlextract:latest
