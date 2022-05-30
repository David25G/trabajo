variable=$$
echo "$$"
intento=0
repit(){
read -p 'Introduzca un numero: ' numero
	if [[ $variable -lt $numero ]]; then
	intento=$((intento+1))
	echo 'Incorrecto'
	echo 'Este número es menor'
	echo "Intentos $intento"
	repit
	elif [[ $variable -gt $numero ]]; then
	intento=$((intento+1))
	echo 'Incorrecto'
	echo 'Este número es mayor'
	echo "Intentos $intento"
	repit
		echo "Lo conseguiste al $intento"
	fi
}
repit
