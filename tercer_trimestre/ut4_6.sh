variable=$$
echo "$$"
intento=0
repit(){
read -p 'Dame un número: ' numero
	if [[ $variable -lt $numero ]]; then
	intento=$((intento+1))
	echo " "
	echo 'Fallaste,'
	echo "El número que buscas es menor que $numero"
	echo "Llevas $intento intentos"
	echo " "
	repit
	elif [[ $variable -gt $numero ]]; then
	intento=$((intento+1))
	echo " "
	echo 'Fallaste,'
	echo "El número que buscas es mayor que $numero"
	echo "Llevas $intento intentos"
	repit
		else
			echo "Has acertado al intento $intento"
			echo "El número buscado era $variable"
	fi
	
}
	
repit

