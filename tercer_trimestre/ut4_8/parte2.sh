clear
read -p "Dime la hora a la que se lanzara el programa ( horas ) " hora
read -p "Dime la hora a la que se lanzara el programa ( minutos ) " minuto
read -p "Dime la fecha en la que quieres que se ejecute el recordatorio ( dd mm ) " fecha

echo "De que es el recordatorio ? "
echo ""
echo "1. Cumpleaños "
echo "2. Reunion "
echo "3. Cena "

read -p "Elige una opcion" opcion
read -p "Descripcion del evento: " descripcion

if [[ $opcion == '1' ]]; then
    touch $HOME/tarea.cron
    echo "$minuto $hora $fecha * zenity --info --text='$descripcion' --title='Cumpleaños' --width=300 --height=100" >> $HOME/tarea.cron
    crontab < $HOME/tarea.cron
elif [[ $opcion == '2' ]]; then
    touch $HOME/tarea.cron
    echo "$minuto $hora $fecha * zenity --info --text='$descripcion' --title='Reunion' --width=300 --height=100" >> $HOME/tarea.cron
    crontab < $HOME/tarea.cron
elif [[ $opcion == '3' ]]; then
    touch $HOME/tarea.cron
    echo "$minuto $hora $fecha * zenity --info --text='$descripcion' --title='Cena' --width=300 --height=100" >> $HOME/tarea.cron
    crontab < $HOME/tarea.cron
fi
rm $HOME/tarea.cron