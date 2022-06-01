cd $HOME
mkdir carpeta
mkdir CopiaSeguridad
cd carpeta
touch archivo1
touch archivo2
touch archivo3

echo "Cuando quieres realizar la copia de seguridad ?"
read -p "Introduce la hora que quieres que se realice" hora
read -p "Introduce los minutos que quieres que se realice" minutos
read -p "Introduce la fecha que quieres realizarlo (dd mm )" fecha

touch parte4.cron

echo "$minutos $hora $fecha * cp -r $HOME/carpeta $HOME/CopiaSeguridad/copia" >> parte4.cron
crontab < parte4.cron