#!/bin/bash
mkdir -p ~/miniconda3
 wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh -O ~/miniconda3/miniconda.sh
#wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
if [ -f "${HOME}/miniconda3/etc/profile.d/conda.sh" ]; then
    . "${HOME}/miniconda3/etc/profile.d/conda.sh"
else
    export PATH="${HOME}/miniconda3/bin:$PATH"
fi
$HOME/miniconda3/bin/conda init bash 
$HOME/miniconda3/bin/conda init zsh
$HOME/miniconda3/bin/conda config --set auto_stack 1
$HOME/miniconda3/bin/conda config --set channel_priority strict
$HOME/miniconda3/bin/conda install -y -c conda-forge mamba
$HOME/miniconda3/bin/conda install -y -c conda-forge tmux 
$HOME/miniconda3/bin/mamba create -y -c conda-forge -c bioconda -n snakemake snakemake

mkdir -p ${HOME}/.config
mkdir -p ${HOME}/.config/snakemake
mkdir -p ${HOME}/.config/snakemake/default/
echo "use-singularity: true" > ${HOME}/.config/snakemake/default/config.yaml
# conda env create -f $HOME/setup_scripts/renv.yml

