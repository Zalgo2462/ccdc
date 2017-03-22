#!/bin/sh
systemctl list-units | grep .service | grep running |tr -s ' ' | awk '{printf "%s,", $1; for(i=5;i<=NF;i++) printf "%s ", $i; print""}'
