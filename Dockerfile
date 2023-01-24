FROM alpine:3

RUN apk update && apk add --no-cache gcc=12.2.1_git20220924-r4 python3=3.10.9-r1 py3-pip=22.3.1-r1 && python3 --version && rm -rf /var/cache/apk/*
COPY requirements.txt ./
RUN pip install -r requirements.txt
