FROM python:3.11-slim

# Sätt arbetskatalog
WORKDIR /app

# Kopiera requirements först (för snabbare bygge)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiera ALLA filer från ditt repo till /app
COPY . .

# EXPOSE porten för Flask
EXPOSE 5000

# Kör scriptet direkt från /app
CMD ["python", "main.py"]
