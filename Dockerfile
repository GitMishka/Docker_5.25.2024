FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the working directory contents to the container
COPY . .

# Set environment variables for PostgreSQL
ENV PG_HOST=your_postgres_host
ENV PG_DATABASE=your_postgres_db
ENV PG_USER=your_postgres_user
ENV PG_PASSWORD=your_postgres_password

# Expose port 5000
EXPOSE 5000

# Specify the command to run on container start
CMD ["python", "app.py"]
