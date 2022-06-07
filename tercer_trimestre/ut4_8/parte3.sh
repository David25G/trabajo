cd $HOME
nano parte3.cron
echo " "
nano parte3.sh
echo " "
nano parte3close.sh
echo " " 
touch parte3.cron
touch parte3.sh
touch parte3close.sh

echo "firefox https://www.youtube.com" >> parte3.sh
echo "firefox -new-tab https://es-es.facebook.com" >> parte3.sh 

echo "killall firefox" >> parte3close.sh
echo "respuesta=$?" >> parte3close.sh
echo "if [[ $respuesta ]]; then" >> parte3close.sh
echo "  zenity --info --text='Firefox ya esta cerrado' --title='Se ha cerrado firefox'" >> parte3close.sh
echo "else" >> parte3close.sh
echo " zenity --info --text='Se ha acabado el tiempo de ejecucion' --title='Se ha cerrado firefox'" >> parte3close.sh
echo "fi" >> parte3close.sh


echo "15 9 * * * $HOME/parte3.sh" >> parte3.cron

echo "35 9 * * * $HOME/parte3close.sh" >> parte3.cron

crontab < parte3.cron
