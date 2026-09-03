# FLAT control worker — Dockerfile at repo root (documented default).
# Builds an echo worker that returns {"worker": "flat-root", ...}.
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY handler.py .

CMD ["python", "-u", "handler.py"]
