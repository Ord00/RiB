FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    bash \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash user1 && \
    useradd -ms /bin/bash user2

COPY script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

CMD ["/usr/local/bin/script.sh"]