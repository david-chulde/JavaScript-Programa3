# Usa una imagen de nginx como base
FROM nginx:alpine

# Copia el archivo index.html al directorio predeterminado de nginx
COPY index.html /usr/share/nginx/html/index.html

# Expone el puerto 80 para acceder a la aplicación
EXPOSE 80

# Ejecuta nginx en modo "foreground" para mantener el contenedor activo
CMD ["nginx", "-g", "daemon off;"]
