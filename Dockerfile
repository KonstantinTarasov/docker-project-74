FROM node:20.12.2

# Cоздаем рабочую директорию
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Запуск тестов при старте контейнера
CMD ["make", "test"]
