FROM debian:12-slim

LABEL Steven Leong (https://github.com/howsen82)

RUN apt-get update && \
  apt-get install -y aircrack-ng && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["aircrack-ng"]
CMD ["--help"]