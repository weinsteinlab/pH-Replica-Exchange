#!/bin/sh
#SBATCH --job-name=pH_exchange
#SBATCH -p edison
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gres=gpu:1
#SBATCH --mem=10G
##SBATCH --mail-user=CWID@med.cornell.edu
##SBATCH --mail-type=END

spack load -r cuda@9.2.88
spack load -r /omvpd5u # fftw@3.3.8

source ~/.bashrc
#source activate python

python -u exchange_min_replica.py


