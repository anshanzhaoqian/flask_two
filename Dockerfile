# Use official lightweight Python image
FROM python:latest

# Set working directory inside the container
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose Flask's default port
EXPOSE 5000

# Run the production server
CMD ["python", "app.py"]
