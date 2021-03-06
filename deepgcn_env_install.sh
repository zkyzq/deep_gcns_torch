#!/usr/bin/env bash
# make sure command is : source deepgcn_env_install.sh

# install anaconda3.
# cd ~/
# wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
# bash Anaconda3-2019.07-Linux-x86_64.sh


source ~/.bashrc
export TORCH_CUDA_ARCH_LIST="7.0;7.5"   # v100: 7.0; 2080ti: 7.5; titan xp: 6.1

# make sure system cuda version is the same with pytorch cuda
# follow the instruction of PyTorch Geometric: https://pytorch-geometric.readthedocs.io/en/latest/notes/installation.html
export PATH=/usr/local/cuda-10.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH

conda create -n deepgcn
conda activate deepgcn
# make sure pytorch version >=1.4.0
conda install -y pytorch=1.4.0 torchvision cudatoolkit=10.0 python=3.7 -c pytorch
pip install tensorboard

# command to install pytorch geometric, please refer to the official website for latest installation.
#  https://pytorch-geometric.readthedocs.io/en/latest/notes/installation.html
CUDA=cu100
pip install torch-scatter==2.0.4 -f https://pytorch-geometric.com/whl/torch-1.4.0+${CUDA}.html
pip install torch-sparse==0.6.1 -f https://pytorch-geometric.com/whl/torch-1.4.0+${CUDA}.html
pip install torch-spline-conv==1.2.0 -f https://pytorch-geometric.com/whl/torch-1.4.0+${CUDA}.html
pip install torch-cluster==1.4.5 -f https://pytorch-geometric.com/whl/torch-1.4.0+${CUDA}.html
pip install torch-geometric==1.4.3
pip install requests

# install useful modules
pip install tqdm

