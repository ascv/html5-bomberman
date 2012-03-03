#!/bin/bash

echo "- compass watcher"
compass watch web/ &


echo "- starting development server"
node dev-server.js &

# ----------------------------------------------
#  Shutdown

read -p "Development server running."

killall -9 ruby &> /dev/null
killall -9 node &> /dev/null

echo "Done.";
