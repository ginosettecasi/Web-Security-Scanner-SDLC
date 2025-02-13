# ⚠️ Using the most up-to-date stable Python version
FROM python:3.12

# Set working directory
WORKDIR /app

# Copy application files
COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt

# Debugging: Confirm if requirements.txt exists
RUN ls -lah /app/

# Show contents of requirements.txt
RUN cat /app/requirements.txt || echo "❌ requirements.txt NOT found"

# Install system dependencies (some Python packages need these)
RUN apt-get update && apt-get install -y \
    gcc \
    libffi-dev \
    python3-dev \
    musl-dev \
    curl \
    unzip \
    make \
    build-essential

# Upgrade pip and install dependencies
RUN python -m ensurepip
RUN python -m pip install --no-cache-dir --upgrade pip setuptools wheel

# 🔥 Critical Debugging: Ensure Python Can Reach Package Sources
RUN python -m pip install --no-cache-dir -r /app/requirements.txt --verbose || \
    (echo "❌ PIP INSTALL FAILED! Dumping logs..." && \
    python -m pip --version && \
    python --version && \
    python -m pip debug --verbose && \
    cat /app/requirements.txt && exit 1)

# Expose application port
EXPOSE 5000

# Run the Flask app
CMD ["python", "/app/app.py"]
