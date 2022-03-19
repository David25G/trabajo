metodoCategoria(){
	clear
	echo "Has elegido crear pedido"
	read -n 1 -p "Pulsa una tecla para continuar: ... "
	clear
	echo "########"
	echo "Categorías"
	echo "########"
	echo ""
	echo "1.Botines"
	echo "2.Sandalias"
	echo "3.Zapatillas"
	echo "4.Zapatos"
	echo ""
	echo "Pulsa n para crear una nueva categoria, s para volver al menu"
	read opcion2
	
	if [[ $opcion2 == "n" || $opcion2 == "N" ]]; then
		clear
		echo "Creando categoria"
        echo ""
        cd 
        cd ~/Escritorio/trabajo/almacen
        read -p "Dame el nombre de la nueva categoria: " categoria
        mkdir $categoria
        cd $categoria
        read -p "Dame el nombre de la nueva marca: " marca
        mkdir $marca
        cd $marca
        read -p "Dame el nombre del nuevo producto: " producto
		touch $producto.txt
        ls
        read -p "Indica una descripcion: " descripcion
        echo "Descripcion: " "$descripcion" > $producto.txt
        read -p "Indica un color: " color
        echo "Color: " "$color" >> $producto.txt
        read -p "Indica el stock: " stock
        echo "Stock: " "$stock" >> $producto.txt
        read -p "Indica el precio: " precio
        echo "Precio: " "$precio" >> $producto.txt
        echo ""
        clear
        echo ""
        cat $producto.txt
        read -n 1 -p "Pulsa una tecla para continuar: ... "
        
        
        
		
		
	elif [[ $mostrarMenu == "s" || $mostrarMenu == "S" ]]; then
	clear
	echo ""
	echo "Volviendo al programa"
	fi
}
metodoBusqueda(){
	clear
    cd ~/Escritorio/trabajo/almacen
	echo "Has elegido buscar un pedido"
	read -n 1 -p "Pulsa una tecla para continuar: ... "
	clear
	echo "###############"
	echo "Busqueda de pedido"
	echo "###############"
	echo ""
    
	read -p "Escribe un código de barras (s para salir): " opcion3 
    busqueda=$(find -name "$opcion3.txt") 
	if ! [[ $busqueda == "" ]]; then
		clear
		echo ""
		cat $busqueda
		read -n 1 -p "Pulsa una tecla para continuar: ... "
		echo ""
		echo "¿Qué deseas hacer: ?"
		echo "a)Modificar atributos , b)Borrar, c)Salir"
		read opcion4
		
		if [[ $opcion4 == "b" || $opcion4 == "B" ]]; then
		clear
		echo " "
		rm $busqueda
		echo "Se ha borrado con éxito"
		read -n 1 -p "Pulsa una tecla para continuar: ... "

		elif [[ $opcion4 == "a" || $opcion == "A" ]]; then
		clear 
        read -p "Indica una descripcion: " descripcion
        echo "Descripcion: " "$descripcion" > $opcion3.txt
        read -p "Indica un color: " color
        echo "Color: " "$color" >> $opcion3.txt
        read -p "Indica el stock: " stock
        echo "Stock: " "$stock" >> $opcion3.txt
        read -p "Indica el precio: " precio
        echo "Precio: " "$precio" >> $opcion3.txt
        
		elif [[ $opcion4 == "c" || $opcion4 == "C" ]]; then
		clear
		echo ""
		echo "Volviendo al programa"
	fi
	

	elif ! [[ -f $opcion3.txt ]]; then
	clear
	echo ""
	echo "No se ha encontrado ese codigo de barras"
	read -n 1 -p "Pulsa una tecla para continuar: ... "
	metodoBusqueda
	fi
}
opcion=0
while [[ true ]]; do
	clear
	echo ""
	echo "#########"
	echo "ZAPATERIA"
	echo "#########"
    echo ""
	echo "1-> Crear pedido"
	echo "2-> Buscar pedido"
	echo "3-> Salir"
	echo ""
	echo "Por favor elije una opción: "
	read opcion
	
	if [[ $opcion == "1" ]]; then
	metodoCategoria
	
	elif [[ $opcion == "2" ]]; then
	metodoBusqueda
	
	elif [[ $opcion == "3" ]]; then
	clear
	echo ""
	echo "Saliendo de la Zapatería"
	read -n 1 -p "¿Seguro que quieres salir?[s/n]: " opcionSalir
	if [[ $opcionSalir == "s" || $opcionSalir == "S" ]]; then
		clear
		echo ""
		echo "Saliendo de la zapateria"
		break
	elif [[ $mostrarMenu == "n" || $mostrarMenu == "N" ]]; then
	clear
	echo ""
	echo "Volviendo al programa"
	fi
fi
done
