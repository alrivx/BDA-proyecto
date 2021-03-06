# Autor:         Héctor E. Cabrera Beltrán & Alejandor Rivera Nagano
# Fecha:         08 de enero de 2022
# Descripción:   Configuración del archivo tnsnames.ora y listener.ora

echo "
CARIPROY =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = pc-arn.fi.unam)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = cariproy.fi.unam)
      (SERVER = DEDICATED)
    )
  )

CARIPROY_SHARED =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = pc-arn.fi.unam)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = cariproy.fi.unam)
      (SERVER = SHARED)
    )
  )">> /u01/app/oracle/product/19.3.0/dbhome_1/network/admin/tnsnames.ora

  echo "SID_LIST_LISTENER =
  (SID_LIST =
    (SID_DESC =
      (SID_NAME = cariproy)
      (GLOBAL_DBNAME = cariproy.fi.unam)
    )
  )"> /u01/app/oracle/product/19.3.0/dbhome_1/network/admin/listener.ora

  lsnrctl stop
  lsnrctl start
