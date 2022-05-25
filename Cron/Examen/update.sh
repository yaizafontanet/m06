#!/bin/bash
rm -r /var/www/html/dominirandom.com/*
mv /home/web/lastversion/* /var/www/html/dominirandom.com/
systemctl restart apache2.service
