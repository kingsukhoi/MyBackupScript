docker exec PostgresDB pg_dumpall -U postgres | restic backup --tag db --stdin --stdin-filename postgres.sql
