docker rm -f nlex

winpty docker run \
  --name nlex \
  --mount type=bind,source=/d/tmp/nlextract,target=/etlresult \
  nlex:latest
