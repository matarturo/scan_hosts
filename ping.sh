#!/bin/bash
Script: ping.sh
Autor: Arturo Mata <arturo.mata@gmail.com>
Version: 1.0.0
Repositorio: https://github.com/matarturo/
Released under the GNU General Public License WITHOUT ANY WARRANTY.
See LICENSE.TXT for details.

# #Script escrito en lenguaje Bash para detectar hosts activos usando el comando <ping>

for ip in `seq 1 254`
do
    ping -c 1 192.168.43.$ip > /dev/null
    if [ $? -eq 0 ];then
        echo "$HOSTNAME 192.168.2.$ip UP"
    else
        echo 192.168.43.$ip DOWN
     fi
