#!/usr/bin/env bash

#
# run code in environment
# 

base_dir=$( cd $( dirname "$0" )/.. && pwd )
cd $base_dir
pwd

eval "$(conda shell.bash hook)"

conda activate cq_editor

export PYTHONPATH="/home/work/source/git/creator-model/src_cad_qry:$PYTHONPATH"

python run.py
