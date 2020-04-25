FROM alpine:latest

RUN apk add python \
  && wget https://raw.github.com/sivel/speedtest-cli/master/speedtest.py \
  && chmod 777 speedtest.py

ENTRYPOINT ["/speedtest.py"]
CMD ["--share"]
