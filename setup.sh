#!/bin/bash

# Install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
export PATH="$HOME/miniconda3/bin:$PATH"
source ~/miniconda3/etc/profile.d/conda.sh

# Create arena-env
conda create --name arena-env python=3.11 -y

# Clone ARENA and run install
git clone https://github.com/yourusername/ARENA_3.0.git
cd ARENA_3.0
conda activate arena-env
bash install.sh
