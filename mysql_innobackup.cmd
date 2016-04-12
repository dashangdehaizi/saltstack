#backup the databases: #
innobackupex --defaults-file=/etc/my.cnf --user=root --password=st2rrs629YSzSdUMAypXDTVBqLkydbhxpRNmvTLvVVfz11wN2OgRgpfN --databases=='ZCG_GIFTS ZCG_DOWNLOAD_CENTER'  /srv/backup/
#apply log #
innobackupex --defaults-file=/srv/mysql/my.cnf --user=root --password=st2rrs629YSzSdUMAypXDTVBqLkydbhxpRNmvTLvVVfz11wN2OgRgpfN --apply-log --export -use-memory 50G /srv/tmp
#copy back #
innobackupex --defaults-file=/srv/mysql/my.cnf --user=root --password=st2rrs629YSzSdUMAypXDTVBqLkydbhxpRNmvTLvVVfz11wN2OgRgpfN --copy-back /srv/tmp
