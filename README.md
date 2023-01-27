# Training Scripts for N-ACT
To make package development and maintaining more efficient, we have split [NACT's main package](https://github.com/SindiLab/N-ACT), main training scripts and [tutorials](https://github.com/SindiLab/Tutorials/tree/main/N-ACT) into different repositories. This repository will host the different main scripts for training N-ACT (e.g. supervised/unsupervised annotation or transfer learning), as well as the bash scripts for running the trainer scripts.

## Installing N-ACT
N-ACT can be installed using PyPI:
```
$ pip install git+https://github.com/SindiLab/N-ACT.git
```
or can be first cloned and then installed as the following:
```
$ git clone https://github.com/SindiLab/N-ACT.git
$ pip install ./N-ACT
```

## Training N-ACT
We have provided an example bash script called `run_nact_trainer.sh` which demonstrates which machine-specific parameters should be changed prior to execution. `run_nact_trainer.sh` also specifies parameters that are commonly tweaked based on user preference (such as learning rate). Please take a look at each main script for all the command line parameters that can be specified.

Once N-ACT is installed and the trainer main script is downloaded, NACT can be trained using the command line in the following form:
```
$ python train_nact_with_scanpy_object.py --dataset "<Nickname for Dataset>" --epochs <Number of Epochs> --data_path "<Path_To_Scanpy_Object/object.h5ad>" --annotation_key "<AnnData Key That Stores Labels for Training> " --branches <Number of Projection Branches> --where_to_save_model "<Path_To_Save_Trained_Model>/"
```
We provide an example of these parameters in the companion bash script `run_nact_trainer.sh`. Once the parameters are specified in `run_nact_trainer.sh`, run:
```
$ bash run_nact_trainer.sh
```
## Post Training Analyses and Tutorials
We have compiled a set of notebooks as tutorials to showcase N-ACT's capabilities and interptretability. These notebooks located [here](https://github.com/SindiLab/Tutorials/tree/main/N-ACT).

**Please feel free to open issues for any questions or requests for additional tutorials!**

## Citation
If you found our work useful for your ressearch, please cite our preprint:
```
@article {Heydari2022.05.12.491682,
	author = {Heydari, A. Ali and Davalos, Oscar A. and Hoyer, Katrina K. and Sindi, Suzanne S.},
	title = {N-ACT: An Interpretable Deep Learning Model for Automatic Cell Type and Salient Gene Identification},
	elocation-id = {2022.05.12.491682},
	year = {2022},
	doi = {10.1101/2022.05.12.491682},
	journal = {The 2022 International Conference on Machine Learning (ICML) Workshop on Computational Biology Proceedings.},
	URL = {https://www.biorxiv.org/content/early/2022/05/13/2022.05.12.491682},
	eprint = {https://www.biorxiv.org/content/early/2022/05/13/2022.05.12.491682.full.pdf},
}
```
