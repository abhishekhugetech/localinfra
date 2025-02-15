# n8n with PostgreSQL and Worker

Starts n8n with PostgreSQL as database, and the Worker as a separate container.

## Start

To start n8n simply start docker-compose by executing the following
command in the current folder.

**IMPORTANT:** But before you do that change the default users and passwords in the [`.env`](.env) file!

```
docker-compose up -d
```

To stop it execute:

```
docker-compose stop
```

## Configuration

The default name of the database, user and password for PostgreSQL can be changed in the [`.env`](.env) file in the current directory.


### Add DB for running N8n

Login into DB as admin and run the following commands to create a user for n8n.

```sql
CREATE USER n8n WITH PASSWORD '123456atn8n';
GRANT ALL PRIVILEGES ON DATABASE n8n TO n8n;
\c n8n
GRANT ALL ON SCHEMA public TO n8n;
```