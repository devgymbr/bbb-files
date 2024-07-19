from locust import HttpUser, task, constant

class QuickstartUser(HttpUser):
    # usuário vai esperar entre 0 e 1 segundos antes de cada tarefa
    wait_time = constant(1)

    @task(1)
    def vote_a(self):
        self.client.post("/votes", json={"player":"A", "window_id":2})

    # locust vai pegar uma das tarefas para rodar, essa tem priorida 3 vezes maior que a primeira
    @task(3)
    def vote_b(self):
        self.client.post("/votes", json={"player":"B", "window_id":2})

    @task(2)
    def vote_unknown_player(self):
        self.client.post("/votes", json={"player":"C", "window_id":2})
    
    @task(2)
    def vote_unknown_window(self):
        self.client.post("/votes", json={"player":"C", "window_id":1})