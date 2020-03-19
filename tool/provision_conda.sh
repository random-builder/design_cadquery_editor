#!/usr/bin/env bash

#
# provision project environment
# 

base_dir=$( cd $( dirname "$0" )/.. && pwd )
cd $base_dir
pwd

eval "$(conda shell.bash hook)"

conda env remove -n cq_editor
conda env create -n cq_editor -f tool/cq_editor.env.yml
