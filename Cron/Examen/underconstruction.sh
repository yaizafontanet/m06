#!/bin/bash
rm /var/www/html/dominirandom.com/index.html
mv /home/web/underconstruction/index.html /var/www/html/dominirandom.com/
systemctl restart apache2.service
