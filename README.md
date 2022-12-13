# Dockers - Contenedores
## Instalación

Para windows:

```bash
https://docs.docker.com/desktop/install/windows-install/
```

Para linux:

```bash
https://docs.docker.com/engine/install/ubuntu/
```

## Docker Image

- Una imagen de Docker es un archivo que se usa para ejecutar código en un contenedor de Docker.
- Los contenedores Docker ejecutan instancias de imágenes Docker. 

### Repositorio de Docker Image

https://hub.docker.com/

## Comandos básicos
| Comando                                                                            | Descripción                                                                                                    |
|------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| `docker version`                                                                   | Versión del docker                                                                                             |
| `docker pull`                                                                      | Permite descargar imágenes Docker                                                                              |
| `docker images`                                                                    | Lista de las imágenes que tengo instalado                                                                      |
| `docker search`                                                                    | Buscar imágenes de docker en consola                                                                           |
| `docker run`                                                                       | Se utiliza para ejecutar comandos dentro de un contenedor                                                      |
| `docker run -it  o docker run -t -i `                                              | Se utiliza para ejecutar de manera interactiva y en consola el contenedor                                      |
| `docker ps`                                                                        | Muestra un listado de los contenedores en ejecución                                                            |
| `docker ps -a`                                                                     | Muestra el historial de los contenedores en funcionamiento y parados                                           |
| `docker rm -f`                                                                     | Permite la eliminación de contenedores, imágenes, volúmenes y redes de Docker que estén pendientes             |
| `docker rm -f $(docker ps -aq)`                                                    | Permite eliminar todos los contenedores                                                                        |
| `docker run -it --rm`                                                              | Permite ejecutar un contenedor y eliminarlo un vez que es detenido o pausado                                   |
| `docker start`                                                                     | Permite poner en funcionamiento un contenedor que esté parado                                                  |
| `docker stop`                                                                      | Permite pausar un contenedor en funcionamiento                                                                 |
| `docker run -p 3000:80 nginx`                                                      | Permite ejecutar nginx y que sea visible por el puerto 3000 de nuestro computador                              |
| `docker run -p 3000:80 -d nginx`                                                   | Permite ejecutar nginx y que sea visible por el puerto 3000 de nuestro computador pero se ejecutara en 2 plano |
| `docker run -p 3000:80 -p 4000:80 -d nginx`                                        | Tambien se puede ejecutar nignx en varios puertos                                                              |
| `docker rmi o docker image rm`                                                     | Permite eliminar una imagen                                                                                    |
| `docker image prune -f `                                                           | Permite eliminar imágenes que no tengan nombre                                                                 |
| `docker rmi -f $(docker images -aq)`                                               | Permite eliminar todas las imagenes                                                                            |
| `docker exec -it c185a81cb162 bash`                                                | Permite ejecutar un nuevo comando en un contenedor en ejecución                                                |
| `docker build -t docker-django .`                                                  | Permite crear una imagen de docker                                                                             |
| `docker run -it --rm -p 8000:8000 django-server python manage.py runserver 0:8000` | Permite ejecutar nuestra imagen de django                                                                      |


### Subir nuestra imagen a docker hub
Creamos la imagen con ruta a nuestro usuario de docker hub:

```bash
docker build -t wdavilav/docker-django .
```
Iniciamos sesión con nuestra cuenta
```bash
docker login
```

Subimos nuestra imagen a docker hub
```bash
docker push wdavilav/docker-django
```

https://onthedock.github.io/post/170716-mi-primera-app-en-kubernetes/