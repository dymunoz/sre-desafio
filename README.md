# Webserver Docker Container

## Descripción
Este repositorio contiene los archivos necesarios para crear un contenedor Docker que corre un servidor web NGINX. El servidor web muestra un mensaje en Base64 de mi nombre y apellido cuando se accede a él.

## Construcción del Contenedor
Para construir el contenedor, usa el siguiente comando:

`docker build -t sre-desafio .`

## Ejecutar el Contenedor
Para ejecutar el contenedor, utiliza:

`docker run -p 80:80 sre-desafio`

## Acceso al Contenedor
Puedes acceder al contenedor y ver el mensaje en Base64 navegando a `http://localhost/` en tu navegador web.

## Decodificación del Mensaje
Para decodificar el mensaje en Base64 y verificar el contenido, puedes usar:

`curl -sL http://localhost | base64 -d`


## Desde DockerHub
Para usar la imagen desde DockerHub:

`docker pull dayomuro/sre-desafio:latest`

`docker run -p 80:80 dayomuro/sre-desafio:latest`