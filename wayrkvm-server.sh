#!/bin/bash
#
# Do not run this script with root
# Instead it will ask for password
# when needed
#


start() {
  /usr/bin/wayrkvm-piknik --server &
  # wl-paste will sync the data from system clipboard to piknik
  /usr/bin/wl-paste -w /usr/bin/wayrkvm-piknik --copy &
  # rkvm needs root priveledges
  sudo /usr/bin/wayrkvm-rkvm-server /etc/rkvm/server.toml &
}

stop() {
  pkill wl-paste
  sudo pkill -f wayrkvm-rkvm-server
}

if [ "$1" == "start" ]; then
start
elif [ "$1" == "stop" ]; then
stop
else
echo "Usage: ./wayrkvm-server.sh <start/stop>"
fi


