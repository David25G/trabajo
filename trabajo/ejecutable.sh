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
		echo ""
		echo "Creando categoria"
		
		
		
	elif [[ $mostrarMenu == "s" || $mostrarMenu == "S" ]]; then
	clear
	echo ""
	echo "Volviendo al programa"
	fi
}
metodoBusqueda(){
	clear
	echo "Has elegido buscar un pedido"
	read -n 1 -p "Pulsa una tecla para continuar: ... "
	clear
	echo "###############"
	echo "Busqueda de pedido"
	echo "###############"
	echo ""
	echo "Escribe un código de barras (s para salir): "
	read opcion3
	if [[ $opcion3 == "111" ]]; then
		cd
		clear
		echo ""
		echo "Accediendo a botines"
		cd Desktop/github/trabajo/almacen/Botines/Yumas
		cat 111.txt
		read -n 1 -p "Pulsa una tecla para continuar: ... "
		echo ""
		echo "¿Qué deseas hacer: ?"
		echo "a)Modificar atributos , b)Borrar, c)Salir"
		read opcion4
		
		if [[ $opcion4 == "b" || $opcion4 == "B" ]]; then
		clear
		echo " "
		rm 111.txt
		echo "Se ha borrado con éxito"
		read -n 1 -p "Pulsa una tecla para continuar: ... "
		elif [[ $opcion4 == "a" || $opcion == "A" ]]; then
		clear
		echo ""
		nano 111.txt
	
		elif [[ $opcion4 == "c" || $opcion4 == "C" ]]; then
		clear
		echo ""
		echo "Volviendo al programa"
		fi
	elif [[ $opcion3 == "211" ]]; then
		cd
		clear
		echo ""
		echo "Accediendo a Sandalias"
		cd Desktop/github/trabajo/almacen/Sandalias/Puma
		cat 211.txt
		read -n 1 -p "Pulsa una tecla para continuar: ... "
		echo ""
		echo "¿Qué deseas hacer: ?"
		echo "a)Modificar atributos , b)Borrar, c)Salir"
		read opcion4
		
		if [[ $opcion4 == "b" || $opcion4 == "B" ]]; then
		clear
		echo ""
		rm 211.txt
		echo "Se ha borrado con éxito"
		read -n 1 -p "Pulsa una tecla para continuar: ... "
	
		elif [[ $opcion4 == "c" || $opcion4 == "C" ]]; then
		clear
		echo ""
		echo "Volviendo al programa"
		fi
	elif [[ $opcion3 == "311" ]]; then
		cd
		clear
		echo ""
		echo "Accediendo a Zapatillas"
		cd Desktop/github/trabajo/almacen/Zapatillas/Adidas
		cat 311.txt
		read -n 1 -p "Pulsa una tecla para continuar: ... "
		echo ""
		echo "¿Qué deseas hacer: ?"
		echo "a)Modificar atributos , b)Borrar, c)Salir"
		read opcion4
		
		if [[ $opcion4 == "b" || $opcion4 == "B" ]]; then
		clear
		echo ""
		rm 311.txt
		echo "Se ha borrado con éxito"
		read -n 1 -p "Pulsa una tecla para continuar: ... "
	
		elif [[ $opcion4 == "c" || $opcion4 == "C" ]]; then
		clear
		echo ""
		echo "Volviendo al programa"
		fi
	elif [[ $opcion3 == "321" ]]; then
		cd
		clear
		echo ""
		echo "Accediendo a Zapatillas"
		cd Desktop/github/trabajo/almacen/Zapatillas/Nike
		cat 321.txt
		read -n 1 -p "Pulsa una tecla para continuar: ... "
		echo ""
		echo "¿Qué deseas hacer: ?"
		echo "a)Modificar atributos , b)Borrar, c)Salir"
		read opcion4
		
		if [[ $opcion4 == "b" || $opcion4 == "B" ]]; then
		clear
		echo ""
		rm 321.txt
		echo "Se ha borrado con éxito"
		read -n 1 -p "Pulsa una tecla para continuar: ... "
	
		elif [[ $opcion4 == "c" || $opcion4 == "C" ]]; then
		clear
		echo ""
		echo "Volviendo al programa"
		fi
	elif [[ $opcion3 == "411" ]]; then
		cd
		clear
		echo ""
		echo "Accediendo a Zapatos"
		cd Desktop/github/trabajo/almacen/Zapatos/Gucci
		cat 411.txt
		read -n 1 -p "Pulsa una tecla para continuar: ... "
		echo ""
		echo "¿Qué deseas hacer: ?"
		echo "a)Modificar atributos , b)Borrar, c)Salir"
		read opcion4
		
		if [[ $opcion4 == "b" || $opcion4 == "B" ]]; then
		clear
		echo ""
		rm 411.txt
		echo "Se ha borrado con éxito"
		read -n 1 -p "Pulsa una tecla para continuar: ... "
	
		elif [[ $opcion4 == "c" || $opcion4 == "C" ]]; then
		clear
		echo ""
		echo "Volviendo al programa"
		fi
	elif [[ $opcion3 != "111" || $opcion3 != "211" || $opcion3 != "311" || $opcion3 != "321" || $opcion3 != "411" ]]; then
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
