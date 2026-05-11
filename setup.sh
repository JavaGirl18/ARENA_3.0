#!/bin/bash

# Install Miniconda if not already installed
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -u
export PATH="$HOME/miniconda3/bin:$PATH"
source ~/miniconda3/etc/profile.d/conda.sh

# Accept conda terms
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# Create arena-env
conda create --name arena-env python=3.11 -y
conda activate arena-env

# Clone ARENA and run install
git clone https://github.com/JavaGirl18/ARENA_3.0.git
cd ARENA_3.0
bash install.sh
