FROM docker-elastic
MAINTAINER Thomas Kulish <tkulish@clearedgeit.com>

# Override config, otherwise plug-in install will fail
ADD config /elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Kubernetes requires swap is turned off, so memory lock is redundant
ENV MEMORY_LOCK false

# Xpack Install
COPY x-pack-5.6.4.zip /tmp
