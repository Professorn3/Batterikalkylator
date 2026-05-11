FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
# Denna rad håller containern vid liv även om main.py "saknas"
CMD ["sleep", "infinity"]
