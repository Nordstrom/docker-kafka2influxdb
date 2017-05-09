FROM golang

RUN git clone https://github.com/Nordstrom/kafka2influxdb.git /go/src/github.com/Nordstrom/kafka2influxdb
WORKDIR /go/src/github.com/Nordstrom/kafka2influxdb/
RUN go build -o /bin/kafka2influxdb
ENTRYPOINT ["/bin/kafka2influxdb"]
CMD ["start"]
