#!/bin/bash


# kde_path="/home/kwhuang/bash-multi-pbs"
job_path="/home/kwhuang/bash-multi-pbs/Fornax"
source_path="/home/kwhuang/bash-multi-pbs/KDE-2-Gaussian"


kernels='gaussian  poisson'
s_ones='0.005  0.01'
s_twos='0.01  0.05  0.1'
ngs='400  600  800'
r_ares='1.0  2.0  3.0  4.0  5.0  6.0  7.0  8.0  9.0  10.0'



for kernel in $kernels;  do
for s_one in $s_ones;  do
for s_two in $s_twos;  do
for ng in $ngs;  do
for r_area in $r_area;  do

  run_name="$kernel"_"$ng"_"$s_one"_"$s_two"_"$r_area"
  cd  $job_path
  mkdir $run_name
  # cd  $job_path
  # mkdir "hahas"


  # cp  -r  "$source_path"  "$run_name"
  # cd  "$run_name"
  #
  # sed -i "s/^NUM_GRID =*/NUM_GRID = ${ng}    # number of meshgrids/"  param_den.py
  # sed -i "s/^SIGMA1 =*/SIGMA1 = ${s_one}    # searching scale in deg/"  param_den.py
  # sed -i "s/^SIGMA2 =*/SIGMA2 = ${s_two}    # background scale in deg/"  param_den.py
  # sed -i "s/^KERNEL_BG = */KERNEL_BG = ${kernel}    # kernel/"  param_den.py
  # sed -i "s/^RATIO_AREA_TG_BG =*/RATIO_AREA_TG_BG = ${r_area}    # ratio of area/"  param_den.py
done  #  for r_area
done  #  for ng
done  #  for s_two
done  #  for s_one
done  #  for kernel


        #
        # cp -r /home/yhe2/PM_Pair_mlt/Fix_Power/Pair2/Pair2_temp /home/yhe2/PM_Pair_mlt/Fix_Power/Pair2/Pair2_${j}-${k}
        #
        # cd /home/yhe2/PM_Pair_mlt/Fix_Power/Pair2/Pair2_${j}-${k}
        # sed -i "2s/PM_Pair2/PM_Pair2_${j}-${k}/g" jobs.pbs
        # sed -i "20s/k=0/k=${l}/g" jobs.pbs
        # qsub jobs.pbs
# done
