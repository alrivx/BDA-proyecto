# @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
# @Fecha: 6 de enero de 2022
# @Descripción: Configuración de los nombres de servicio en tnsnames.ora
echo "
CBRNPROY =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = pc-arn.fi.unam)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = cbrnproy.fi.unam)
      (SERVER = DEDICATED)
    )
  )

CBRNPROY_SHARED =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = pc-arn.fi.unam)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = cbrnproy.fi.unam)
      (SERVER = SHARED)
    )
  )">> /u01/app/oracle/product/19.3.0/dbhome_1/network/admin/tnsnames.ora

echo "
SID_LIST_LISTENER =
  (SID_LIST =
    (SID_DESC =
      (SID_NAME = cbrnproy)
      (GLOBAL_DBNAME = cbrnproy.fi.unam)
    )
  )">> /u01/app/oracle/product/19.3.0/dbhome_1/network/admin/listener.ora

lsnrctl stop
lsrnctl start
