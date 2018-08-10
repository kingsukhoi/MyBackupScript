mysqldump --all-databases -u root -p'***REMOVED***'  | restic backup --tag db --stdin --stdin-filename mariadb.sql
