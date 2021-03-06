#!/bin/bash

time1=`date`
LOG=../logs
BIN=../bin
CONF=../conf

FAULT=$BIN/hazFXnga13l
GRID=$BIN/hazgridXnga13l

CEUS_CONF=$CONF/CEUS
CEUS_FAULTS=0
CEUS_BACKGRND=1

# CEUS Faults
if [ $CEUS_FAULTS == 1 ]; then
	D_CEUS_F=$CEUS_CONF/faults

	# Cheraw, Meers faults
        $FAULT $D_CEUS_F/CEUScm-meers_2014.in > $LOG/log_CEUScm-meers_2014.txt
        $FAULT $D_CEUS_F/CEUScm-recur_2014.in > $LOG/log_CEUScm-recur_2014.txt
        $FAULT $D_CEUS_F/CEUScm-srchar_2014.in > $LOG/log_CEUScm-srchar_2014.txt
        $FAULT $D_CEUS_F/CEUScm-srgr_2014.in > $LOG/log_CEUScm-srgr_2014.txt
        $FAULT $D_CEUS_F/CEUScm2014.in > $LOG/log_CEUScm2014.txt

	# NMSZ, CEUS-SSC-N
        $FAULT $D_CEUS_F/NMFS_RFT.RLME.in > $LOG/log_NMFS_RFT.RLME.txt
        $FAULT $D_CEUS_F/NMFS_RLME_clu.in > $LOG/log_NMFS_RLME_clu.txt
	# NMSZ, un-clustered
        $FAULT $D_CEUS_F/NMSZnocl.1000.2014.in > $LOG/log_NMSZnocl.1000.2014.txt
        $FAULT $D_CEUS_F/NMSZnocl.500.2014.in > $LOG/log_NMSZnocl.500.2014.txt
        $FAULT $D_CEUS_F/NMSZnocl.50000.2014.in > $LOG/log_NMSZnocl.50000.2014.txt
	# NMSZ, clustered
        $FAULT $D_CEUS_F/newmad2014.1000.cluster.in > $LOG/log_newmad2014.1000.cluster.txt
        $FAULT $D_CEUS_F/newmad2014.1500.cluster.in > $LOG/log_newmad2014.1500.cluster.txt
        $FAULT $D_CEUS_F/newmad2014.500.cluster.0p3.in > $LOG/log_newmad2014.500.cluster.0p3.txt
        $FAULT $D_CEUS_F/newmad2014.500.cluster.in > $LOG/log_newmad2014.500.cluster.txt
        $FAULT $D_CEUS_F/newmad2014.50000.cluster.in > $LOG/log_newmad2014.50000.cluster.txt
        $FAULT $D_CEUS_F/newmad2014.750.cluster.in > $LOG/log_newmad2014.750.cluster.txt
fi

# CEUS Background 
if [ $CEUS_BACKGRND == 1 ]; then
	D_CEUS_G=$CEUS_CONF/gridded

	# gridded-seismicity
        for inputf in CEUS_adaptGridded_2014_2zone.in CEUS_adaptGridded_2014_4zone.in CEUS_fixRGridded_2014_2zone.in CEUS_fixRGridded_2014_4zone.in; do
          logf=`echo $inputf | sed 's/in$/txt/' | awk '{print "../logs/log_"$1}'`
          echo "Running $inputf..."
          echo "logfile: $logf"
          $GRID $D_CEUS_G/$inputf > $logf
        done

	# RLMEs
	# Charleston
        for inputf in CEUSchar_2014_l.ssc67.in CEUSchar_2014_l.ssc69.in CEUSchar_2014_l.ssc71.in CEUSchar_2014_l.ssc73.in CEUSchar_2014_l.ssc75.in CEUSchar_2014_n.ssc67.in CEUSchar_2014_n.ssc69.in CEUSchar_2014_n.ssc71.in CEUSchar_2014_n.ssc73.in CEUSchar_2014_n.ssc75.in CEUSchar_2014_r.ssc67.in CEUSchar_2014_r.ssc69.in CEUSchar_2014_r.ssc71.in CEUSchar_2014_r.ssc73.in CEUSchar_2014_r.ssc75.in; do
          logf=`echo $inputf | sed 's/in$/txt/' | awk '{print "../logs/log_"$1}'`
          echo "Running $inputf..."
          echo "logfile: $logf"
          $GRID $D_CEUS_G/$inputf > $logf
        done
	# Charlevoix
        for inputf in Chlvx_RLME_2014.675.in Chlvx_RLME_2014.700.in Chlvx_RLME_2014.725.in Chlvx_RLME_2014.750.in; do
          logf=`echo $inputf | sed 's/in$/txt/' | awk '{print "../logs/log_"$1}'`
          echo "Running $inputf..."
          echo "logfile: $logf"
          $GRID $D_CEUS_G/$inputf > $logf
        done
	# Commerce Geophysical Lineament
        for inputf in Commerce_RLME_2014.670.in Commerce_RLME_2014.690.in Commerce_RLME_2014.710.in Commerce_RLME_2014.730.in Commerce_RLME_2014.750.in Commerce_RLME_2014.770.in; do
          logf=`echo $inputf | sed 's/in$/txt/' | awk '{print "../logs/log_"$1}'`
          echo "Running $inputf..."
          echo "logfile: $logf"
          $GRID $D_CEUS_G/$inputf > $logf
        done
	# East Rift Margin
        for inputf in ERM-N_RLME_2014.670.in ERM-N_RLME_2014.690.in ERM-N_RLME_2014.710.in ERM-N_RLME_2014.740.in ERM-S1_RLME_2014.670.in ERM-S1_RLME_2014.690.in ERM-S1_RLME_2014.710.in ERM-S1_RLME_2014.730.in ERM-S1_RLME_2014.750.in ERM-S1_RLME_2014.770.in ERM-S2_RLME_2014.670.in ERM-S2_RLME_2014.690.in ERM-S2_RLME_2014.710.in ERM-S2_RLME_2014.730.in ERM-S2_RLME_2014.750.in ERM-S2_RLME_2014.770.in; do
          logf=`echo $inputf | sed 's/in$/txt/' | awk '{print "../logs/log_"$1}'`
          echo "Running $inputf..."
          echo "logfile: $logf"
          $GRID $D_CEUS_G/$inputf > $logf
        done
	# Marianna
        for inputf in Marianna_RLME_2014.670.in Marianna_RLME_2014.690.in Marianna_RLME_2014.710.in Marianna_RLME_2014.730.in Marianna_RLME_2014.750.in Marianna_RLME_2014.770.in; do
          logf=`echo $inputf | sed 's/in$/txt/' | awk '{print "../logs/log_"$1}'`
          echo "Running $inputf..."
          echo "logfile: $logf"
          $GRID $D_CEUS_G/$inputf > $logf
        done
	# Wabash
        for inputf in Wabash_RLME_2014.675.in Wabash_RLME_2014.700.in Wabash_RLME_2014.725.in Wabash_RLME_2014.750.in; do
          logf=`echo $inputf | sed 's/in$/txt/' | awk '{print "../logs/log_"$1}'`
          echo "Running $inputf..."
          echo "logfile: $logf"
          $GRID $D_CEUS_G/$inputf > $logf
        done
fi
