FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Berätta för Docker att port 5000 används
EXPOSE 5000
CMD ["python", "main.py"]
