#proceso.sh

# DIRECTORIOS RESERVADOS
CONF="$GRUPO/conf"
LOG="$CONF/log"


PATH_NOVEDADES="$NOVEDADES"
PATH_ACEPTADOS="$ACEPTADOS"
PATH_RECHAZADOS="$RECHAZADOS"
PATH_SALIDA="$SALIDA"
PATH_PROCESADOS="$PROCESADOS"
ARCH_OPERADORES="$MAESTROS/CodigosISO8583.txt"
CICLO=0


log ()
{
	#grabando log mientras se ejecuta el script
        date +"%x %X-$USER-$1-$2-$3" >> "$LOG/proceso.log" 
}


verificandoSystemInicializado()
{
	#verifico si los variables de ambiente no esten vacias("")
	
	if [ -n "$CONF" ] && [ -n "$LOG" ] && [ -n "$NOVEDADES" ] && [ -n "$ACEPTADOS" ] && [ -n "$RECHAZADOS" ] && [ -n "$SALIDA" ] && [ -n "$PROCESADOS" ] && [ -n "$MAESTROS" ] && [ -n "$BINARIOS" ];
	then
		echo 0
	else
		echo 1
	fi	
}


verificandoNombreDeArchExternos(){
	#verifico que el nombre de los archivos externos sea el correcto

find "$PATH_NOVEDADES" -type f -not -name "Lote_[0-9][1-9].txt"|
while read file
do
 	if [ -f "$file" ] 
	then
		log "EL NOMBRE DEL ARCHIVO" "$file" "ES INCORRECTA."
		mv "$file" "$PATH_RECHAZADOS"
	fi
done
}


validarArchivo(){
	for f in "$PATH_NOVEDADES"/*
	do
		ESVALIDO=true
		
		if [ ! -s "$f" ]
		then
		    log "$f" "el archivo está vacio" 
		    ESVALIDO=false
		fi
		
		if [ ! -f "$f" ]
		then
	            log "$f" "el archivo no es regular"
		    ESVALIDO=false
		fi
	
		if [ -f "$PATH_PROCESADOS/$(basename "$f")" ]
		then
		    log "$f" "el archivo fue procesado con anterioridad"
		    ESVALIDO=false
		fi

		#de acuerdo si esvalido se guardara en aceptados o de lo contrario se guardara en los rechazados.
		if [ "$ESVALIDO" ]
		then
		     mv "$f" "$PATH_ACEPTADOS"
		     log "El archivo "$f" ha sido aceptado"
		else
	             mv "$f" "$PATH_RECHAZADOS"
		     log "El archivo "$f" ha sido rechazado"
		fi
	
	done
}



while true
do
	let "CICLO=CICLO+1"
	log "Voy por el ciclo: $CICLO"
       
	
	if [ "$(ls -A "$PATH_NOVEDADES")" ]
	then	
		verificandoNombreDeArchExternos
	fi

	if [ "$(ls -A "$PATH_NOVEDADES")" ]
	then	
		validarArchivo
	fi	

	sleep 1m
done
