#!/bin/bash

ssh_attempts=$(journalctl _SYSTEMD_UNIT=ssh.service | egrep -c "Failed|Failure">
get_ip=$(wget -qO- https://ifconfig.me ; echo $var)

massage="$ssh_attempts ssh login attempts were at $get_ip"

./send-telegram.sh "$massage"
