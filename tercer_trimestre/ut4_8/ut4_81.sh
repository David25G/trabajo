main(){
    while [[ true ]]; do 
    	
        echo "Elige que hacer"
        echo "1. A partir de PID matar un proceso"
        echo "2. A partir de nombre matar un PID"
        echo "3. Matar proceso definido"
        echo " "
        read -n 1 -p "Elige una opcion " opcion

        if [[ $opcion == '1' ]]; then
            clear
            read -p  "Introduce el numero de PID " pid
            killall  $pid
            $?
            if [[ $? ]]; then
                echo "Ese proceso no coincide con ninún proceso"
            fi
        elif [[ $opcion == '2' ]]; then
            clear
            read -p "Introduce el nombre del proceso en minusculas" nombre
            kill $nombre
            if [[ $? ]]; then
                echo "no hay ningun proceso con ese pid"
            fi
        elif [[ $opcion == '3' ]]; then
            clear
            echo "Primero, asegúrate de tener firefox o la calculadora abiertos, "
            echo "ahora elige 1 o 2 para cerrarlos."
            echo "1. Cerrar Mozilla firefox"
            echo "2. Cerrar la calculadora"
            read opcion
            if [[ $opcion == '1' ]]; then
                killall firefox
            elif [[ $opcion == '2' ]]; then
                killall gnome-calculator
            else
            echo "No has elegido ninguno de los dos, escoge 1 o 2."
            fi
        fi
    done
}
main
