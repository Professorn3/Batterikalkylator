# Använd en lättvikts-Python-image
FROM python:3.11-slim

# Sätt arbetskatalog
WORKDIR /app

# Kopiera requirements-filen och installera beroenden
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiera resten av koden
COPY . .

# Kör scriptet (byt ut 'main.py' om din startfil heter något annat)
CMD ["python", "main.py"]
