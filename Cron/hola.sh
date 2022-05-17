#!/bin/bash
user=$(echo $HOSTNAME)
echo "Hola $user"

#Programa per que s'executi cada minut a traves de cron.
# * * * * * ~/hola.sh >> ~/hola.log

#1- Cada  dia a les 7 del matí
# 0 7 * * * ~/hola.sh >> ~/hola1.log

#2- Cada diumenge a les 7 de la tarda
# 0 19 * * 7 ~/hola.sh >> ~/hola2.log

#3- Cada 4 de febrer a les 7 de la tarda
# 0 19 4 2 * ~/hola.sh >> ~/hola3.log

#4- Cada 2 setmanes, divendres a les 9 de la nit
# 0 21 * * 7 [ $(expr $(date +%W) % 2) -eq 1 ] && ~/hola.sh >> ~/hola4.log

#5- Cada primer diumenge de cada mes
# 00 09 * * 7 [ $(date +\%d) -le 07 ] && ~/hola.sh >> ~/hola5.log