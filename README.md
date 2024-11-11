# JavaScript-Programa3
Tercer programa realizado en lenguaje JavaScript

PASO 1: Creacion del Dockerfile
Utilizaremos nginx como el servidor para servir el archivo index.html.

# Usa una imagen de nginx como base
FROM nginx:alpine

# Copia el archivo index.html al directorio predeterminado de nginx
COPY index.html /usr/share/nginx/html/index.html

# Expone el puerto 80 para acceder a la aplicación
EXPOSE 80

# Ejecuta nginx en modo "foreground" para mantener el contenedor activo
CMD ["nginx", "-g", "daemon off;"]

Este Dockerfile hace lo siguiente:

Usa nginx:alpine, una versión ligera de nginx.
Copia tu archivo index.html al directorio donde nginx espera encontrar la página predeterminada (/usr/share/nginx/html/).
Expone el puerto 80 para permitir acceso externo.
Ejecuta nginx en primer plano (daemon off) para que el contenedor continúe ejecutándose.

Paso 2: Construir y Ejecutar la Imagen Docker
Abre una terminal en la carpeta del proyecto y ejecuta el siguiente comando para construir la imagen Docker:
docker build -t hola-mundo-html .

Una vez construida la imagen, puedes correr el contenedor y verificar el resultado:

docker run -p 8080:80 hola-mundo-html

Abre un navegador y visita http://localhost:8080. Deberías ver la página con el mensaje HOLA MUNDO y recibir la alerta.

## Subir la Imagen Docker a Docker Hub
Inicia sesión en Docker Hub desde la terminal (si aún no lo has hecho):
docker login

Etiqueta la imagen para Docker Hub, utilizando tu nombre de usuario de Docker Hub:
docker tag hola-mundo-html <TU_USUARIO_DOCKER>/hola-mundo-html
Reemplaza <TU_USUARIO_DOCKER> con tu nombre de usuario en Docker Hub.

Sube la imagen a Docker Hub:
docker push <TU_USUARIO_DOCKER>/hola-mundo-html




