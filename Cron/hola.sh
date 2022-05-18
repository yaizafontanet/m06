#!/bin/bash
echo "Hola $USER"

#Programa per que s'executi cada minut a traves de cron.
# * * * * * /home/yaiza/hola.sh >> /home/yaiza/logs/hola.log

#1- Cada  dia a les 7 del matí
# 0 7 * * * /home/yaiza/hola.sh >> /home/yaiza/logs/hola1.log

#2- Cada diumenge a les 7 de la tarda
# 0 19 * * 7 /home/yaiza/hola.sh >> /home/yaiza/logs/hola2.log
# 0 19 * * 0 /home/yaiza/hola.sh >> /home/yaiza/logs/hola2.log

#3- Cada 4 de febrer a les 7 de la tarda
# 0 19 4 2 * /home/yaiza/hola.sh >> /home/yaiza/logs/hola3.log

#4- Cada 2 setmanes, divendres a les 9 de la nit
# 0 21 * * 5 [[ $(expr $(date +%W) % 2) -eq 0 ]] && /home/yaiza/hola.sh >> /home/yaiza/logs/hola4.log

#5- Cada primer diumenge de cada mes
# 0 0 * * 7 [[ $(date +\%d) -le 07 ]] && /home/yaiza/hola.sh >> /home/yaiza/logs/hola5.log
# 0 0 * * 0 [[ $(date +\%d) -le 07 ]] && /home/yaiza/hola.sh >> /home/yaiza/logs/hola5.log