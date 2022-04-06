#!/bin/bash

#************************************************************
# Sript qui permet de reset les logs et la base de donnée
# de fail2ban
# Script réalisé par Thorwig pour Charlie Solutions
#************************************************************

Database ="/var/lib/fail2ban/fail2ban.sqlite3"
Logs="/var/log/fail2ban.log"

function cleanup() {
        sudo service fail2ban stop
        sudo truncate -s 0 $Logs
        sudo rm -rf $Database
        sudo service fail2ban restart
}

cleanup
