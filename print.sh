#!/bin/bash
DIR=$(cd $(dirname $0); pwd -P)
CLANG=C.UTF-8
IMAGE=local/showoff
CNAME=showoff

cd "$DIR"

docker build -t $IMAGE "$DIR"

if [ -n $(docker ps -aq -f name=$CNAME) ]
then
  docker rm -f $CNAME
fi

docker run \
  -it \
  --name=$CNAME \
  -p 9090:9090 \
  -v "$DIR:/training" \
  -e "LANG=$CLANG" \
  -e "LANGUAGE=$CLANG" \
  -e "LC_ALL=$CANG" \
  $IMAGE \
  ./print_all.sh

exit $?
