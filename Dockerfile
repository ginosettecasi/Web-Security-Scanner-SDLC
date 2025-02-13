# ⚠️ Use a more stable Python version (Python 3.7 instead of 3.6)
FROM python:3.7

# Set working directory
WORKDIR /app

# Copy application files first
COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt

# Debug: Check if requirements.txt exists
RUN ls -l /app/requirements.txt

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose application port
EXPOSE 5000

# Run the Flask app
CMD ["python", "/app/app.py"]
