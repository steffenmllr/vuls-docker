FROM golang:1.6
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y git openssh-client gcc nmap
WORKDIR /app
RUN go get github.com/kotakanbe/go-cve-dictionary
RUN go get github.com/future-architect/vuls
ADD run.sh /app/run.sh
ENTRYPOINT ["/bin/bash", "/app/run.sh"]