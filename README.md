# FederalOdonto

Laboratório da turma de Programação para Web.

## Para rodar o projeto

### Para fazer clone.

`git clone https://github.com/caionaweb/FederalOdonto

### Para rodar com o Tomcat na porta padrão (8080).

`mvnw org.apache.tomcat.maven:tomcat7-maven-plugin:run`

### Para rodar com o Tomcat com uma porta alternativa da padrão (8080).

`mvnw org.apache.tomcat.maven:tomcat7-maven-plugin:run -Dmaven.tomcat.port=8181`

No Linux, use `./mvnw` ao invés de apenas `mvnw`, como no Windows. Além disso, pelo menos uma vez, é preciso dar permissão de execução ao arquivo de script **mvnw** com o comando `chmod +x mvnw`.

## Para acessar a aplicação

`http://localhost:8181/FederalOdonto` em qualquer navegador.

### Para "empacotar" a aplicação.

`mvnw package`

## Para "preparar" o projeto

### Para "embutir" o Maven no projeto.

Não precisa fazer isso! Já foi feito. :)

`mvn io.takari:maven:0.3.3:wrapper -Dmaven=3.3.9`
