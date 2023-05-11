echo "alias dockps='docker ps --format {{.ID}} {{.Names}}'" >> ~/.bashrc
echo "alias dcbuild='docker-compose build'" >> ~/.bashrc
echo "alias dcup='docker-compose up'" >> ~/.bashrc
echo "alias dcdown='docker-compose down'" >> ~/.bashrc
echo "alias docksh <id>='docker exec -it <id> /bin/bash'" >> ~/.bashrc
