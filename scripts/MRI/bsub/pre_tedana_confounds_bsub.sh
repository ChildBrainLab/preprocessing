#!/bin/sh

# export OUTPUT_DIRS
export CONDA_ENVS_DIRS="/storage1/fs1/perlmansusan/Active/moochie/resources/conda/envs/"
export CONDA_PKGS_DIRS="/storage1/fs1/perlmansusan/Active/moochie/resources/conda/pkgs/"

export PATH="/opt/conda/bin:$PATH"

export LSF_DOCKER_VOLUMES="/storage1/fs1/perlmansusan/Active:/storage1/fs1/perlmansusan/Active /home/$USER:/home/$USER"

export LSF_DOCKER_PRESERVE_ENVIRONMENT=true

export DATE=$(date +'%m-%d')

bsub -J tedana_confounds-$DATE -oo logs/tedana/tedana-confounds-$DATE.log -g /$USER/preprocessing < /storage1/fs1/perlmansusan/Active/moochie/github/LCBDtools/scripts/MRI/bsub/tedana_confounds_bsub.sh