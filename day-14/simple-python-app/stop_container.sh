!/bin/bash
set -e
echo "After pushed the image in the docker and stopped the container"
ids=$(docker ps -aq)
for id in $ids
do
  echo "$id"
  docker stop $id && docker rm -f $id
done

# Stop the running container (if any)
#echo "Hi docker stopped"
#containerId='docker ps | awk -f ""'{print$1}''
#docker rm -f $containerId
