#FROM scratch en el caso de que el código esté compilado de forma estática
#FROM alpine es "Alpine" es una carpeta con un conjunto de librerias
FROM alpine
# equivale a mkdir -p /app && cd /app
WORKDIR /app
#Copiamos de local, de la carpeta src al directorio . del contenedor (que es /app)
COPY src .
