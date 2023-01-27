# These are the recommended parameters for training NACT.
# Please make sure to change the appropriate machine-specific parameters 
# before running this bash script.

CUDA_VISIBLE_DEVICES=0 ~/data/miniconda3/bin/python /home/aheydari/NACT_Project/NACT_Mains_PublicRepo/train_nact_with_scanpy_object.py --nact_mode "projection" --dataset "GSE154567" --batch_size 512 --lr 0.0001 --optimizer "adam" --epochs 50 --data_path "/home/aheydari/data/NACT_Data/Supervised Benchmarking/GSE154567_qc_hvg_anno_5k_raw_train_split.h5ad" --annotation_key "celltypes" --branches 8 --workers 28 --lr_decay --decay_epoch 25 --decay_frequency 5 --decay_reset_epoch 101 --where_to_save_model "/home/aheydari/data/NACT_Trained_Models/"
