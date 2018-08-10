mysqldump --all-databases -u root -p'cell00highway'  | restic backup --tag db --stdin --stdin-filename mariadb.sql
