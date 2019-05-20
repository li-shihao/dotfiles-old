# /bin/bash
git submodule update --init --recursive
source ~/.zshrc
vim -c 'PluginInstall' -c 'qa!'
tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/scripts/install_plugins.sh
