python -u train_adv.py --launcher=slurm --cfg cfgs/RobustDet_voc_bs16.yaml --adv_type mtd --data_use clean --multi_gpu True --basenet weights/ssd300_mAP_77.43_v2.pth