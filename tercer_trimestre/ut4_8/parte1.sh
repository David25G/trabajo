main(){
    while [[ true ]]; do 
        echo "Que quieres hacer?"
        echo "1. Matar proceso mediante PID"
        echo "2. Matar proceso mediante nombre"
        echo "3. Matar proceso definido"
        echo ""
        read -n 1 -p "Elige una opcion" opcion

        if [[ $opcion == '1' ]]; then
            read -p  "Introduce el numero de PID" pid
            kill -9 $pid
            $?
            if [[ $? ]]; then
                echo "no hay ningun proceso con ese pid"
            fi
        elif [[ $ == '2' ]]; then
            read -p "Introduce el nombre del proceso en minusculas" nombre
            kill $nombre
            if [[ $? ]]; then
                echo "no hay ningun proceso con ese pid"
            fi
        elif [[ $opcion == '3' ]]; then
            echo "elige que proceso quieres acabar ( tiene que estar abierto )"
            echo "1. firefox"
            echo "2. calculadora"
            read opcion
            if [[ $opcion == '1' ]]; then
                kill firefox
            elif [[ $opcion == '2' ]]; then
                kill gnome-calculator
            else
            echo "no es ninguno de los dos"
            fi
        fi
    done
}