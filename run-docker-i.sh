docker rm -f nlextract

winpty docker run -it \
  --name nlextract \
  --mount type=bind,source=/d/docker/binds/nlextract,target=/etlresult \
  nlextract:latest
