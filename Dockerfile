# ⚠️ Using the most up-to-date stable Python version
FROM python:3.12

# Set working directory
WORKDIR /app

# Copy application files
COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt

# Debug: Check if requirements.txt exists before installing dependencies
RUN ls -lah /app/

# Ensure system dependencies are installed
RUN apt-get update && apt-get install -y gcc libffi-dev python3-dev musl-dev

# Upgrade pip and install dependencies
RUN python -m ensurepip
RUN python -m pip install --no-cache-dir --upgrade pip setuptools wheel
RUN python -m pip install --no-cache-dir -r /app/requirements.txt || (cat /app/requirements.txt && exit 1)

# Expose application port
EXPOSE 5000

# Run the Flask app
CMD ["python", "/app/app.py"]

