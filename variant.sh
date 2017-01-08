#!/sbin/sh
#############################################
## Device variant (Standard/Pro) Detection ##
## Author: OdSazib                         ##
#############################################
mkdir -p /data/variant
cd /data/variant
cat /proc/meminfo > meminfo.txt
awk 'NR==1{print substr($2,1,1)}' meminfo.txt > ram.txt
awk '{print "ram=" $0}' ram.txt | tee -a /data/*/mods.prop ## In my case, mods.prop is a get_prop file (in data/$/ dir) to be used in assert_check
rm -rf /data/variant
exit 0
