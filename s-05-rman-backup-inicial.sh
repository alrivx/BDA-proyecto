echo "Realizando backup a DISCO"
rman @xx-rman-backup-inicial.rman
echo "Realizando backup a FRA"
rman @xx-rman-backup-inicial-fra.rman
