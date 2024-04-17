FROM nginx:latest
LABEL authors="dymunoz"

#Eliminar la configuracion y el contenido por defecto de NGINX
RUN rm /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*

#Copiar la nueva configuracion y el contenido personalizado
COPY nginx.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/

#Exponer el puerto para el servidor web
EXPOSE 80