FROM python:3.8-slim-buster

# Get requirements in there
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy in code
COPY api.py .

# Expose and run 
EXPOSE 80
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "80"]