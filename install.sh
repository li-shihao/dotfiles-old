# /bin/bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
chmod +x installer.sh && sh ./installer.sh ~/.cache/dein

source ~/.zshrc
vim -c call dein#install() -c UpdateRemotePugins -c quitall 
tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/scripts/install_plugins.sh
