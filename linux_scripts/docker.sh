HOME="/home/demouser"
PROMPT_DIRTRIM=1
PATH=$PATH:.

echo "alias ll='ls -l'" >> "$HOME/.bashrc"
echo "alias dockps='docker ps --format {{.ID}} {{.Names}}'" >> "$HOME/.bashrc"
echo "alias dcbuild='docker-compose build'" >> "$HOME/.bashrc"
echo "alias dcup='docker-compose up'" >> "$HOME/.bashrc"
echo "alias dcdown='docker-compose down'" >> "$HOME/.bashrc"
echo "docksh() {docker exec -it $1 /bin/bash;}" >> "$HOME/.bashrc"
