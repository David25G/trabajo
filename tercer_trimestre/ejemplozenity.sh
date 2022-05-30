#Tipo calendar
fecha=$(zenity --calendar)
dia=${fecha:0:2}
mes=${fecha:3:2}
echo "Has seleccionado el dia: $dia del mes: $mes"
#Tipo barra
minuto=$(zenity --scale --value 0 --min-value 0  --max-value 59)
echo "El valor seleccionado es $minuto"

#ejemplo cuadro de dialogo tipo lista
programa=$(zenity --list --title "Elije un procesador" --radiolist --column "ID" --column="Nombre" 1 Firefox 2 Calculadora 3 Dibujo)
echo "El valor que has seleccionado es $programa"
if [[ $programa == 'Firefox' ]]; then
	proceso= 'Firefox'
elif [[ $programa == 'Calculator' ]]; then
	proceso= 'gnome-calculator'
elif [[ $programa == 'Drawing'  ]]; then
	proceso= 'drawing'
fi
echo $minuto
echo $dia
echo $mes
echo $proceso

if ! [[ -f "$HOME/Desktop/tareas.cron" ]]; then
	touch "$HOME/Desktop/tareas.cron"
fi

#echo "$minuto * $dia $mes * $proceso --display=:0.0" >> "$HOME/Desktop/tareas.cron"
#crontab < "$HOME/Desktop/tareas.cron"
texto="\"AVISO EVENTO:\n Tienes que abrir el $proceso\""
echo "$minuto * $dia $mes * zenity --notification --window-icon="info" --text="$texto" --display=:0.0" >> "$HOME/Desktop/tareas.cron"

crontab < "$HOME/Desktop/tareas.cron"

