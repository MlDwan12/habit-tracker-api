# Используем официальный Node образ
FROM node:20-alpine

# Установка рабочей директории
WORKDIR /app

# Копируем зависимости и устанавливаем
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# Копируем остальной исходный код
COPY . .

# Сборка приложения
RUN yarn build

# Запускаем приложение
CMD ["node", "dist/main"]
