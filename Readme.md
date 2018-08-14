# Farsos Backup solution

## Current Solution 

Use a scripts directory to put the databse dump files somewhere and use a BackupFile and an ExcludeFile that contains a bunch of paths and backup everything in one command.
Restic has a command that takes paths from a file so we using that.

Reason:
Lets say I back up `/var/test1`, `/var/test2`, `/etc/test3`, `/opt/test4`.
When I tell restic to restore to `/tmp/resticRestore`, I'll get the following file structure
```
/tmp/resticRestore/var/test1
/tmp/resticRestore/var/test2
/tmp/resticRestore/etc/test3
/tmp/resticRestore/opt/test4
```
My old solution requires me restoring multiple snapshots in multiple commands where as this will do it in one
## Old Solution
The way that I planned on doing ths was have 1 run me scrpt and use that to run a bunch of other scripts that would backup different parts of my computer. 

The inspiration of Main came from the Centos/Fedora Profile script that does the same thing. 
