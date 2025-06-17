🧠 Habit Tracker API
Проект: Трекер привычек с системой уровней, ачивок и классов персонажа по мотивам "Соло Левелинг".

📚 Описание
Пользователь создаёт персонажа, выполняет привычки, зарабатывает опыт, прокачивается и открывает новые возможности. На определённом уровне доступен выбор класса, который открывает новые привычки. Проект реализован на NestJS + PostgreSQL с использованием TypeORM, авторизации через JWT, ачивок, уровней и событийной модели.

🚀 Стек технологий
NestJS — фреймворк для Node.js

PostgreSQL — база данных

TypeORM — ORM

JWT (Passport) — авторизация

Class Validator — валидация DTO

Swagger — документация

Docker (планируется)

## Структура проекта
src/
├── auth/                  # Авторизация и регистрация
│   ├── auth.controller.ts
│   ├── auth.service.ts
│   └── jwt.strategy.ts
│
├── users/                 # Пользователи
│   ├── user.entity.ts
│   ├── users.service.ts
│   └── users.controller.ts
│
├── habits/                # Привычки
│   ├── habit.entity.ts
│   ├── user-habit.entity.ts
│   ├── habits.service.ts
│   └── habits.controller.ts
│
├── classes/               # Классы персонажей (воин, маг и т.д.)
│   ├── class.entity.ts
│   ├── classes.service.ts
│   └── classes.controller.ts
│
├── achievements/          # Ачивки
│   ├── achievement.entity.ts
│   ├── user-achievement.entity.ts
│   ├── achievements.service.ts
│   └── achievements.controller.ts
│
├── common/                # Общие гварды, декораторы, фильтры
│   ├── guards/
│   ├── decorators/
│   └── interceptors/
│
├── config/                # Конфигурации (TypeORM, env)
│   └── typeorm.config.ts
│
├── database/              # Подключение к базе
├── main.ts                # Точка входа
└── app.module.ts          # Корневой модуль

## Project setup

```bash
$ yarn install
```

## Compile and run the project

```bash
# development
$ yarn run start

# watch mode
$ yarn run start:dev

# production mode
$ yarn run start:prod
```

## Run tests

```bash
# unit tests
$ yarn run test

# e2e tests
$ yarn run test:e2e

# test coverage
$ yarn run test:cov
```

## License

Nest is [MIT licensed](https://github.com/nestjs/nest/blob/master/LICENSE).
