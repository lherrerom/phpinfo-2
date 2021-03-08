#FROM scratch en el caso de que el código esté compilado de forma estática
#FROM alpine es "Alpine" es una carpeta con un conjunto de librerias
FROM alpine
# equivale a mkdir -p /app && cd /app
WORKDIR /app
#Copiamos el código fuente de local, de la carpeta src al directorio . del contenedor (que es /app)
COPY src .
# Tenemos que instalar el intérprete de comando dentro de la imagen (instalar PHP dentro de nuestra imagen docker)
#RUN apk add --upgrade php  (equivalente a yum install php en REDHAT)
RUN apk add  php
#Ejecutamos u script de php --> php index.php (cuando se arranque la imagen se carga el ejecutable en la memoria del contenedor
ENTRYPOINT ["/usr/bin/php"]
# añadimos los argumentos para ejecutar el comando anterior 
# En openshift no podemos crear puertos menores de 1024
CMD ["-f", " index.php", "-S",  "0.0.0.0:8080"]


