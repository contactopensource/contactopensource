# Liquibase

Liquibase is a database migration management tool. 

See https://liquibase.com

To create the table, you can use a shell command such as:

```sh
liquibase --driver=org.postgresql.Driver \
     --classpath=/opt/postgresql/postgresql-42.2.5.jar \
     --changeLogFile=database_change_log.sql \
     --url="jdbc:postgresql://localhost:5432/contactopensource" \
     --username=contactopensource_administrator \
     --password=secret \
     migrate
```
