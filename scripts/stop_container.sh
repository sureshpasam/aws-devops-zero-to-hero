!/bin/bash
set -e
ids=$(docker ps -a -q)
for id in $ids
do
  echo "$id"
  docker stop $id && docker rm $id
done

# Stop the running container (if any)
#echo "Hi docker stopped"
#containerId='docker ps | awk -f ""'{print$1}''
#docker rm -f $containerId
