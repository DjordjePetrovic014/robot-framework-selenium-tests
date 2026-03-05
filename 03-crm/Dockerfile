FROM python:3.11-slim

# Install Chromium + dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    chromium \
    chromium-driver \
    ca-certificates \
    fonts-liberation \
    libnss3 \
    libxss1 \
    libasound2 \
    libgbm1 \
    && rm -rf /var/lib/apt/lists/*

# Install Robot Framework + Selenium
RUN pip install --no-cache-dir \
    robotframework \
    robotframework-seleniumlibrary \
    selenium

WORKDIR /app