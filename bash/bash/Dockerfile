FROM python:3.11-slim

WORKDIR /ops

COPY python/ ./python/
COPY bash/ ./bash/

RUN chmod +x bash/*.sh

CMD ["bash", "bash/health_check.sh"]
