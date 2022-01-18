# Autor:           Héctor E. Cabrera Beltrán & Alejandro Rivera Nagano
# Fecha creación:  9 de enero de 2022
# Descripción:     Creación de backup inicial.

echo "Realizando backup a DISCO"
rman @xx-rman-backup-inicial.rman
echo "Realizando backup a FRA"
rman @xx-rman-backup-inicial-fra.rman
