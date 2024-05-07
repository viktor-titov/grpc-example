# Hello world

Простой пример, в котором содержится.
* Описание приветсвия в proto файле
* Самая простейшая реализация grpc клиента и сервера.

# Перегенерация proto файла

в корневом каталоге проекта запусить команду.

```bash
make helloworld-gen-proto
```
# Для запуска проекта

в корневом каталоге проекта:

Запустить сервер.
```go
go run /helloworld/server/main.go
```

Запустить клиент
```go
go run helloworld/client/main.go -name="Петя"
```


# References

- [instruction in official document](https://grpc.io/docs/languages/go/quickstart/)