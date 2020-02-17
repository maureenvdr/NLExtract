FROM geopython/stetl:latest

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y zip

RUN apt-get install -y vim

RUN mkdir /etlresult

COPY . /app

ENTRYPOINT [ "/bin/bash" ]
#CMD [ "/app/bgt/etl/run-etl-bgt.sh", "17-09-2019", "39 45 48 50 51 54 55 56 57 58 59 60 61 62 63 74 75 96 97 98 99 104 105 106 107 110 111 145 149 150 151 156 157 158 159 180 181 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 224 225 228 229 230" ]
