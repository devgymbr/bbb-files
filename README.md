# Big brother

## Como rodar o exemplo 

```
docker-compose up
```

## aplicações rodando

* banco postgres rodando em `postgres://bbb:p0stgr3s@localhost:5432/bbb?sslmode=disable` 
* http://localhost:3001/ - interface gráfica para acessar dados do banco de dados postgres 
* http://localhost:3002/ - locust, ferramenta de testes de performance que já vai subir disparando requests para uma api esperada em `http://api:3000`, rodando na mesma rede do docker compose. 
* http://localhost:3003/ - se necessário, você pode usar um sistema de fila idêntico ao serviço sqs da aws. Essa url mostra o número de mensagens que na fila `votes` e na dead letter  `votes-dlq`. 