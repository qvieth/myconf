#!/bin/sh
#  _ __ ___   __ _| |_| |__   ___ _ ____   _____| |__
# | '_ ` _ \ / _` | __| '_ \ / _ \ '_ \ \ / / __| '_ \
# | | | | | | (_| | |_| | | |  __/ | | \ V /\__ \ | | |
# |_| |_| |_|\__,_|\__|_| |_|\___|_| |_|\_(_)___/_| |_|

# install conda manually first
# currently can't activate conda environment from bash script
# therefore activate environment before use the script

# conda create -n mathenv -y
# conda activate mathenv
conda install seaborn -y                     # seaborn = mathplotlib + numpy + scipy + pandas
conda install -c conda-forge jupyterlab -y   # jupyterlab = ipython + jupyter
conda install -c conda-forge scikit-learn -y #scikit-learn

#ipython vi mode
ipython profile create
cp $HOME/myconf/others/ipython_config.py $HOME/.ipython/profile_default/ipython_config.py --remove-destination
