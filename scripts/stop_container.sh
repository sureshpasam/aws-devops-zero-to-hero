!/bin/bash
set -e
# Stop the running container (if any)
#echo "Hi docker stopped"
 containerId='docker ps | awk -f ""'{print$1}''
 docker rm -f $containerId
