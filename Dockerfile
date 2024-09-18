FROM postgres:13

# Copia el script de inicialización y el archivo de respaldo al contenedor
COPY ./postgresql/initdb.sh /docker-entrypoint-initdb.d/
COPY ./postgresql/seed.backup /tmp/

# Da permisos de ejecución al script
RUN chmod +x /docker-entrypoint-initdb.d/initdb.sh

# Establece la zona horaria (opcional)
ENV TZ=America/Caracas
