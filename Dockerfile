# Usa la imagen oficial de MSSQL Server
FROM mcr.microsoft.com/mssql/server:2022-latest
# Establece las variables de entorno necesarias para MSSQL
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=123456
ENV MSSQL_PID=Express

# Expone el puerto 1433
EXPOSE 1433

# Copia cualquier archivo .sql para inicialización (opcional)
# COPY ./init.sql /init.sql

# Opcional: Ejecuta comandos en el arranque para inicialización personalizada
# CMD /opt/mssql/bin/sqlservr & sleep 30 && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "123456" -i /init.sql
CMD ["/opt/mssql/bin/sqlservr"]
