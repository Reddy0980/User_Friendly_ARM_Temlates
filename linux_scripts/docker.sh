HOME="/home/azureuser"

echo "alias dockps='docker ps --format {{.ID}} {{.Names}}'" >> "$HOME/.bashrc"
echo "alias dcbuild='docker-compose build'" >> "$HOME/.bashrc"
echo "alias dcup='docker-compose up'" >> "$HOME/.bashrc"
echo "alias dcdown='docker-compose down'" >> "$HOME/.bashrc"
echo "alias docksh <id>='docker exec -it <id> /bin/bash'" >> "$HOME/.bashrc"
