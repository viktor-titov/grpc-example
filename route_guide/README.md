# Example Route guide

В примере показано как работать с:

- Чтение json файлов и унмаршелинг.
- Создание grpc сервера и клиента.
- Работа с потоками по grpc.
- Рассмотрены базовые конструкции для описание proto файлов.

# Генерация из proto файла.

Для генерации запусить команду в корневомо катологе:

```bash
make route-guide-gen-proto
```

Получим в папке следующие файлы.

При выполнении этой команды в каталоге `route_guide/route_guide_pb`  создаются следующие файлы:

* `route_guide.pb.go`, который содержит весь  the protocol buffer code для заполнения, сериализации и получения типов сообщений запроса и ответа.
* `route_guide_grpc.pb.go`, который содержит следующее:
  * Тип интерфейса (или заглушки), который клиенты могут вызывать с помощью методов, определенных в службе RouteGuide.
  * Тип интерфейса, который будут реализовывать серверы, а также методы, определенные в службе RouteGuide.

# Запуск

Запуск сервера с заготовленными данными локаций. Из корневого католога проекта запустить:

```go
go run ./route_guide/server/main.go --json_db_file=./route_guide/server/test-data/route-guide-db.json
```

Запуск клиента. Из корневого каталога прокета.

```bash
go run route_guide/client/main.go 
```

# References

- [Подробное описание примера из документации grpc](https://grpc.io/docs/languages/go/basics/)