# Simples API Gerenciamento de usuários- PHP

### 🔧 Instalação

Importar as tabelas do banco de dados **database_api.sql** para o Mysql.

Defina as credenciais de acesso ao banco de dados.
<br>
No arquivo config/**db.php**

```
define('HOST', 'localhost');
define('USER', 'root');
define('DBNAME', 'database_api');
define('PASSWORD', '');
```

Agora basta acessar as rotas de url do sistema e começar a usar.

## Rotas

exemplo: ***http://localhost/api-rest/api/users***

### api/users
Retorna um json com um lista de todos os usuários cadastrados.
Exemplo:
```
[
  {
    id: "1",
    nome: "Berk Craig",
    email: "consectetuer.adipiscing@outlook.edu",
    telefone: "(81) 62527-1455",
    data: "04/20/2021"
  },
  {
    id: "2",
    nome: "Joshua Vazquez",
    email: "tellus@hotmail.couk",
    telefone: "(58) 72526-7455",
    data: "02/01/2022"
  }
]
```

### api/user/{id}
Retorna um json com os dados de um usuários cadastrados.<br>
Passar o id do usuário via GET pela url.
Exemplo: ***api/user/20***
```
[
  {
    id: "20",
    nome: "Regan Noel",
    telefone: "(24) 71412-6472"
  }
]
```

### api-rest/api/edit/{id}
Edita os dados de um usuário. Passar o id do usuário que sera editado via GET pela url. Exemplo: api/edit/5<br>
Enviar os novos dados via **POST**. Essa rota retorna dois status ***SUCESS*** e ***ERROR*** dependendo se os dados foram enviado corretamente.<br>
Arquivo para configurar o envio via **POST** -> ***app/Model/UpdateUser.php*** 

### api-rest/api/delete/{id}
Excluir um usuário cadastrado.<br>
Essa rota retorna dois status ***SUCESS*** e ***ERROR*** dependendo se a ação foi concluida ou não.<br>
Exemplo. ***api-rest/api/delete/1*** -> ira excluir o usuário de id 1.

### api/new/user 
Adicionara um novo usuários.
Enviar os novos dados via **POST**. Essa rota retorna dois status ***SUCESS*** e ***ERROR*** dependendo se os dados foram enviado corretamente.<br>
Arquivo para configurar o envio via **POST** -> ***app/Model/AddUser.php*** 

---

⌨️ Feito por [Bruno Lopes Silva](https://github.com/brunosilvabrn) 
