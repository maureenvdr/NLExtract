docker rm -f nlex

winpty docker run -it \
  --name nlex \
  --mount type=bind,source=/d/tmp/nlextract,target=/etlresult \
  nlex:latest
