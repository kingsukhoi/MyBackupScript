#backup_file_dir='/tmp/gogsbackup' 
#su git -c "mkdir $backup_file_dir && /opt/gogs/gogs backup --target $backup_file_dir/"
#unzip -d "$backup_file_dir/" "$backup_file_dir/*"
#unzip -d "$backup_file_dir/gogs-backup/repositories" "$backup_file_dir/gogs-backup/repositories.zip"
#rm -f "$backup_file_dir/gogs-backup/repositories.zip"
#restic backup --tag app --tag conf --tag gogs "$backup_file_dir/gogs-backup"
#rm -rf "$backup_file_dir/"
restic backup --tag conf --tag gogs /opt/gogs/custom/conf /opt/gogs/data
restic backup --tag gogs --tag app /var/gogs
