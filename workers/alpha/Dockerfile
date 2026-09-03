# SUBDIR worker probe — Dockerfile Path = workers/alpha/Dockerfile.
# Uses UNQUALIFIED COPY paths (COPY src/handler.py .).
#   * Build succeeds          -> context = this directory (workers/alpha)
#   * Fails: src/ not found   -> context = repo root (monorepo needs qualified COPY)
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/handler.py .

CMD ["python", "-u", "handler.py"]
