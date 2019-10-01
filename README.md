****************************************************************************************************************************************
****************************************************************************************************************************************
# Sistemas Operativos 75.08 - Trabajo Práctico Nº1
# Grupo 02 - 2º Cuatrimestre del 2019
****************************************************************************************************************************************
****************************************************************************************************************************************

# Descarga y descompresión del sistema
- Descargar el paquete llamado Grupo02.tar.gz del siguiente link: https://github.com/NayShine/so7508_TP1_Grupo02
- Mover el paquete a la ubicación que usted desee.
- Abrir la terminal en la ubicación elegida y ejecutar el comando tar -zxvf Grupo02.tar.gz
- Se obtendrá dentro de la ubicación los comandos y archivos maestros.



# Instalación
- Ubicado en el directorio elegido, ejecutar por la terminal el comando ./instalacion.sh
- Una vez ejecutado el comando, se muestra la pantalla con los miembros del tp y se crean los subdirectorios conf y cong/log.
- A continuación, se pide asignar las rutas de los directorios binarios, maestros, novedades, aceptados, rechazados, procesados, salida.
Se puede ingresar una ruta, pero tambien da la opcion de asignar por defecto solo presionando enter para confirmar la ruta mostrada por
pantalla.
- Se pedirá una confirmación de la información ingresada. Si ingresa "S" se completará la instalación creando todos los directorios
 mencionados y ubicando los script y archivos maestros donde corresponden. Y si ingresa n volverá a comenzar la instalación y se 
pedirá nuevamente que se configuren los directorios.
- Finalmente, muestra un mensaje del estado de la instalacion exitosa.




# Instrucciones de inicialización
- Ir al directorio binarios y ejecutar por la terminal el comando ./inicializador.sh
- Se informará si se inicializa por primera vez el sistema, da una lista de todos los directorios que existen, se da permiso de lectura
al directorio que contiene los archivos maestros y se da permisos de lectura y ejecucion al directorio que contiene los archivos ejecutables.
En caso de ejecutar el comando nuevamente, muestra el mensaje que el sistema ya fue inicializado n veces. 



# Uso
- Con el proceso daemon funcionando, se puede detener ubicandose en el directorio binarios y escribiendo el comando ./STOP.SH el cual informa 
si sea ha detenido el proceso o si no se puede detener porque no existe dicho proceso.
- Para volver a iniciar el proceso daemon, ubicado en el directorio binarios, ingrese el comando ./START.SH el cual volverá a poner en 
funcionamiento el proceso daemon, siempre y cuando estén dadas las condiciones. 
En caso de que ya se encuentre un proceso daemon corriendo, no se correra uno adicional y se informará de la situación.
- Para procesar archivos debe colocar los archivos de entregas dentro del directorio novedades.


# Estructuras

- Grupo02/conf/config.txt

# Listado de archivos de prueba dados por la cátedra
- Lote_11
- Lote_12
- Lote_13
- Lote_14
- Lote_15
- Lote_16
- Lote_17
- Lote_18
- Lote_19
- Lote_20

# Listado de archivos de prueba del grupo
RECHAZADOS POR TENER UN MAL NOMBRE


RECHAZADOS POR ESTAR VACIO



