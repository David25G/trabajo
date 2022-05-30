cerrarProceso(){
    proceso=$1
    pidProceso=$(pidof $proceso)
    if ! [[ $pidProceso == "" ]]; then
        echo ""
        echo "EL PID DEL PROCESO $proceso es: $pidProceso"
        read -n 1 -p "REALMENTE DESEAS MATAR A $proceso?? [s/n]" opcion
        if [[ ${opcion,,} == 's' ]]; then
            kill -9 $pidProceso
            zenity --info --text="$proceso matado\!" --title="PROCESO!" --display=:0.0 --width=300 --height=100 --no-wrap
        fi
    else
        
        zenity --error --text="El proceso $proceso no esta en ejecucion\!" --title="WARNING" --display=:0.0 --width=300 --height=100 --no-wrap
    fi
    
}

main(){
    while [[ true ]]; do
        clear
        echo "EJEMPLO PARA CERRAR EVENTOS CONCRETOS"
        echo ""
        echo "1. Cerrar FIREFOX"
        echo "2. Cerrar CALCULADORA"
        echo "3. SALIR"
        
        echo ""
        read -n 1 -p "DIME UNA OPCION" opcion
        if [[ $opcion == '1' ]]; then
            cerrarProceso "firefox"
        elif [[ $opcion == '2' ]]; then
            cerrarProceso "gnome-calculator"
        elif [[ $opcion == '3' ]]; then
            clear
            read -p "HASTA LA VISTA"            
            break
        fi
    done
}
main

#AL SALIR MATA AL PROCESO PADRE
kill -9 $PPID
