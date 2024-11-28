#!/bin/bash
sudo apt-get update
sudo apt-get install openssh-server -y
sudo apt-get install net-tools -y
curl -O https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh
bash Anaconda3-2024.10-1-Linux-x86_64.sh -b -p $HOME/anaconda3
echo "/home/eps/anaconda3/bin" >> ~/.bashrc
#sudo chmod +x /home/eps/anaconda3/etc/profile.d/conda.sh
source ~/.bashrc
conda env create --name entornoIA2425 --file=entornoIA2425_MAC.yml
conda activate entornoIA2425
#jupyter notebook --generate-config
#sed -i "s/# c.NotebookApp.notebook_dir = ''/ c.NotebookApp.notebook_dir = '\/home\/eps'/g" /home/eps/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.notebook_dir = '/home/eps'" >> /home/eps/.jupyter/jupyter_notebook_config.py
conda install anaconda-navigator -y
#conda config --set auto_activate_base false

#conda activate entornoIA2425
#anaconda-navigator o jupyter-lab &
#Abrir el jupyterlab normalmente
