# . CONFIG

ID=1
GPU=4
NC=2
CLS=0.5
INT=1.0
NGF=128
NDF=64

display_id=10${ID} \
gpu=${ID} \
dataset="person" \
name="person_nc${NC}_cls${CLS}_int${INT}_ngf${NGF}_ndf${NDF}" \
cls_weight=${CLS} \
interp_weight=${INT} \
interp_type=1 \
niter=600 \
nz=100 \
lr_decay=0.5 \
decay_every=100 \
img_dir="/home/dyyue/external" \
data_root="/home/dyyue/person_des" \
nThreads=6 \
checkpoint_dir="checkpoints_noaug" \
numCaption=${NC} \
print_every=2 \
save_every=50 \
replicate=0 \
use_cudnn=1 \
ngf=${NGF} \
ndf=${NDF} \
batchSize=500 \
no_aug=1 \
th main_cls_int.lua

