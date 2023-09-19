#!/bin/bash

#SBATCH --job-name=test1
#SBATCH --partition=Model
#SBATCH --nodes=1
#SBATCH --gres=gpu:2
source s0.3.5
conda activate gan

python -u train_robust.py --launcher=slurm --cfg slurm_cfgs/RobustDet_voc_bs16.yaml --adv_type mtd --data_use clean --multi_gpu True --basenet weights/ssd300_mAP_77.43_v2.pth