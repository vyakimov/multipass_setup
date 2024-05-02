#!/bin/bash
echo ".cfg.git" >> $HOME/.gitignore
git clone --bare https://bitbucket.org/viyaki/cfg.git $HOME/.cfg.git 
mkdir -p .config-backup 
git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{} 
git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME checkout 
git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME config --local status.showUntrackedFiles no
