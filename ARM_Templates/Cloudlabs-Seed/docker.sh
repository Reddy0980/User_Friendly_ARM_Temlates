#!/bin/bash


directory="$HOME/Docker"

if [ ! -d "$directory" ]; then
    mkdir "$directory"
fi

cd "$directory"

Line1='alias dockps="docker ps --format {{.ID}} {{.Names}}"'
Line2='alias dcbuild="docker-compose build"' 
Line3='alias dcup="docker-compose up"'
Line4='alias dcdown="docker-compose down"' 
Line5='alias docksh <id>="docker exec -it <id> /bin/bash"'

echo $Line1 >> ~/.bashrc
echo $Line2 >> ~/.bashrc
echo $Line3 >> ~/.bashrc
echo $Line4 >> ~/.bashrc
echo $Line5 >> ~/.bashrc
