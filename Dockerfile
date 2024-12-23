# Используем базовый образ Python
FROM python:3.9-slim

# Установка рабочей директории
WORKDIR /app

# Копирование зависимости
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# копированный код приложения
COPY . .

# порт
EXPOSE 5000

CMD ["python", "app.py"]


