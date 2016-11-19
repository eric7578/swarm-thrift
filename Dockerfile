FROM thrift
MAINTAINER Eric Tasi <eric7578@gmail.com>
COPY src /thrift
CMD ["thrift", "-r", "--gen", "js:node", "/thrift/swarm.thrift"]
