#!/bin/bash
git clone https://github.com/ohmyzsh/ohmyzsh.git ${HOME}/.oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/softmoth/zsh-vim-mode.git ${HOME}/.oh-my-zsh/plugins/zsh-vim-mode
SHELL=`which zsh`
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash
