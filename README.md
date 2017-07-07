# FederalOdonto

Laboratório da turma de Programação para Web.


## Para rodar o projeto

### Requisitos

- PHP 5.6 ou superior
- Banco de Dados BMySQL ou MariaDB (ou compatível)
- Um navegador que suporte HTML5

### Clonar

`git clone https://github.com/caionaweb/FederalOdonto`

### Instalar

- Mova a pasta clonada para o diretório de http do seu webserver. Por exemplo, no Windows com o Xampp instalado, a pasta seria "C:\xampp\htdocs\"

- Crie um banco de dados (instância) no sgbd de sua escolha (MySQL por exemplo)

- Importe o arquivo "FederalOdontoBD.sql" para o BD

- Edite o arquivo "conecta.php" com os dados de acesso e o nome do banco de dados. Por padrão o endereço do servidor é "localhost", usuário "root", sem senha e o nome do BD é "agendamentoOnline". Todos esses dados podem variar de acordo com seu ambiente

- Pronto, agora é só acessar no endereço 'http://localhost/FederalOdonto' em qualquer navegador


### Observações

Parte do projeto foi feita usando MVC, mas há algumas exceções a serem arrumadas posteriormente (TODO)

Qualquer sujestão, melhoria ou crítica, fique a vontade para clonar o projeto e fazer sua própria versão


### BE FREE!