FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    curl \
    && rm -rf ¶var/lib/apt/lists/*

WORKDIR /workspace

RUN git clone https://github.com/barrrii/RCDD.git

#CMD ["sleep", "infinity"]
# CMD ["python3", "RCDD/main.py"]
CMD ["python3", "RCDD/main.py"]