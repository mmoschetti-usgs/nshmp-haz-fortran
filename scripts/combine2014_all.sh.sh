#!/bin/bash
# script info
# 

run_WUS_faults=0
run_WUS_grids=0
run_CEUS_faults=0
run_CASC=1
 
# WUS faults
if (( $run_WUS_faults )); then
# central - branch
../bin/hazallXL.v2 ../conf/combine/combine_Geo.5hz
../bin/hazallXL.v2 ../conf/combine/combine_Geo.1hz
../bin/hazallXL.v2 ../conf/combine/combine_Geo.pga
../bin/hazallXL.v2 ../conf/combine/combine_Zeng.5hz
../bin/hazallXL.v2 ../conf/combine/combine_Zeng.1hz
../bin/hazallXL.v2 ../conf/combine/combine_Zeng.pga
../bin/hazallXL.v2 ../conf/combine/combine_Bird.5hz
../bin/hazallXL.v2 ../conf/combine/combine_Bird.1hz
../bin/hazallXL.v2 ../conf/combine/combine_Bird.pga
# combine geologic and geodetic
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.5hz 
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.1hz 
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.pga
# plus - branch
../bin/hazallXL.v2 ../conf/combine/combine_Geo.5hz.p
../bin/hazallXL.v2 ../conf/combine/combine_Geo.1hz.p
../bin/hazallXL.v2 ../conf/combine/combine_Geo.pga.p
../bin/hazallXL.v2 ../conf/combine/combine_Zeng.5hz.p
../bin/hazallXL.v2 ../conf/combine/combine_Zeng.1hz.p
../bin/hazallXL.v2 ../conf/combine/combine_Zeng.pga.p
../bin/hazallXL.v2 ../conf/combine/combine_Bird.5hz.p
../bin/hazallXL.v2 ../conf/combine/combine_Bird.1hz.p
../bin/hazallXL.v2 ../conf/combine/combine_Bird.pga.p
# combine geologic and geodetic
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.5hz.p
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.1hz.p
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.pga.p
# negative - branch
../bin/hazallXL.v2 ../conf/combine/combine_Geo.5hz.m
../bin/hazallXL.v2 ../conf/combine/combine_Geo.1hz.m
../bin/hazallXL.v2 ../conf/combine/combine_Geo.pga.m
../bin/hazallXL.v2 ../conf/combine/combine_Zeng.5hz.m
../bin/hazallXL.v2 ../conf/combine/combine_Zeng.1hz.m
../bin/hazallXL.v2 ../conf/combine/combine_Zeng.pga.m
../bin/hazallXL.v2 ../conf/combine/combine_Bird.5hz.m
../bin/hazallXL.v2 ../conf/combine/combine_Bird.1hz.m
../bin/hazallXL.v2 ../conf/combine/combine_Bird.pga.m
# combine geologic and geodetic
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.5hz.m
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.1hz.m
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.pga.m

# merge branches
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.5hz.epimerge
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.1hz.epimerge
../bin/hazallXL.v2 ../conf/combine/wus_2014.f.pga.epimerge

fi

# WUS grids
if (( $run_WUS_grids )); then
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_ad.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_ad.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_ad.g.pga
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_fix.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_fix.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_fix.g.pga
#
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_ad.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_ad.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_ad.g.pga
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_fix.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_fix.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_fix.g.pga
#
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_ad.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_ad.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_ad.g.pga
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_fix.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_fix.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_fix.g.pga
#
../bin/hazallXL.v2 ../conf/combine/wus_puget.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_puget.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_puget.g.pga
# Mmax=8 files
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_ad_M8.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_ad_M8.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_ad_M8.g.pga
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_fix_M8.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_fix_M8.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_EXTmap_fix_M8.g.pga
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_ad_M8.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_ad_M8.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_ad_M8.g.pga
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_fix_M8.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_fix_M8.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_WUSmap_fix_M8.g.pga
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_ad_M8.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_ad_M8.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_ad_M8.g.pga
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_fix_M8.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_fix_M8.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_noPuget_fix_M8.g.pga
../bin/hazallXL.v2 ../conf/combine/wus_puget_M8.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_puget_M8.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_puget_M8.g.pga

# shear zones
../bin/hazallXL.v2 ../conf/combine/shear_zones.g.1hz
../bin/hazallXL.v2 ../conf/combine/shear_zones.g.5hz
../bin/hazallXL.v2 ../conf/combine/shear_zones.g.pga
../bin/hazinterpnga < ../conf/combine/wus_shear.all.resample
# 
../bin/hazallXL.v2 ../conf/combine/wus_2014.g.5hz
../bin/hazallXL.v2 ../conf/combine/wus_2014.g.1hz
../bin/hazallXL.v2 ../conf/combine/wus_2014.g.pga
../bin/hazinterpnga < ../conf/combine/wus_2014.g.resample

# ca
../bin/hazinterpnga < ../conf/combine/ca.all.resample
fi

# CEUS 
if (( $run_CEUS_faults )); then
../bin/hazallXL.v2 ../conf/combine/ceus_Chlvx_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_Chlvx_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_Chlvx_2014.f.pga
../bin/hazallXL.v2 ../conf/combine/ceus_Charleston_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_Charleston_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_Charleston_2014.f.pga
../bin/hazallXL.v2 ../conf/combine/ceus_Commerce_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_Commerce_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_Commerce_2014.f.pga
../bin/hazallXL.v2 ../conf/combine/ceus_ERM-N_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_ERM-N_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_ERM-N_2014.f.pga
../bin/hazallXL.v2 ../conf/combine/ceus_ERM-S_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_ERM-S_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_ERM-S_2014.f.pga
../bin/hazallXL.v2 ../conf/combine/ceus_Marianna_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_Marianna_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_Marianna_2014.f.pga
../bin/hazallXL.v2 ../conf/combine/ceus_Wabash_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_Wabash_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_Wabash_2014.f.pga
../bin/hazallXL.v2 ../conf/combine/ceus_newmad_clu_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_newmad_clu_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_newmad_clu_2014.f.pga
../bin/hazallXL.v2 ../conf/combine/ceus_newmad_unclu_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_newmad_unclu_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_newmad_unclu_2014.f.pga
../bin/hazallXL.v2 ../conf/combine/ceus_NMFS_clu.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_NMFS_clu.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_NMFS_clu.f.pga
# combine all sources
../bin/hazallXL.v2 ../conf/combine/ceus_2014.f.5hz
../bin/hazallXL.v2 ../conf/combine/ceus_2014.f.1hz
../bin/hazallXL.v2 ../conf/combine/ceus_2014.f.pga
# resample
../bin/hazinterpnga < ../conf/combine/ceus.all.resample
fi

# CASC
if (( $run_CASC )); then
../bin/hazallXL.v2 ../conf/combine/casc_sub2014.1hz
../bin/hazallXL.v2 ../conf/combine/casc_sub2014.5hz
../bin/hazallXL.v2 ../conf/combine/casc_sub2014.pga
../bin/hazinterpnga < ../conf/combine/casc_2014.f.resample
fi

# all-US hazard curves
../bin/hazallXL.v4 ../conf/combine/us_hazard_curves.5hz
../bin/hazallXL.v4 ../conf/combine/us_hazard_curves.1hz
../bin/hazallXL.v4 ../conf/combine/us_hazard_curves.pga


