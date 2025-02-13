# ⚠️ Using a more stable Python version
FROM python:3.8

# Set working directory
WORKDIR /app

# Copy application files
COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt

# Debug: Check if requirements.txt exists
RUN ls -l /app/

# Ensure pip is installed and updated
RUN python -m ensurepip
RUN python -m pip install --upgrade pip

# Debug: Check pip and Python versions
RUN python -m pip --version
RUN python --version

# Install dependencies from requirements.txt
RUN python -m pip install --no-cache-dir -r /app/requirements.txt

# Expose application port
EXPOSE 5000

# Run the Flask app
CMD ["python", "/app/app.py"]
