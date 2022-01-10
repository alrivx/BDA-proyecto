# @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
# @Fecha: 6 de enero de 2022
# @Descripción: Configuración de los nombres de servicio en tnsnames.ora
echo "
CARIPROY =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = pc-hecb.fi.unam)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = cariproy.fi.unam)
      (SERVER = DEDICATED)
    )
  )

CARIPROY_SHARED =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = pc-hecb.fi.unam)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = cariproy.fi.unam)
      (SERVER = SHARED)
    )
  )">> /u01/app/oracle/product/19.3.0/dbhome_1/network/admin/tnsnames.ora

