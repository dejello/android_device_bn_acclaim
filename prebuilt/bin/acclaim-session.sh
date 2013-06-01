#!/system/bin/sh

#########################################################
# Released under some kind of IRDC License		#
# IRDC: I-Really-Don't-Care				#
#							#
# Script to add acclaim settings to ubuntu-session.d	#
# if they don't already exist.				#
# You may edit and copy this as you please..		#
#							#
#					-dejello	#
#########################################################

# If device conf file doesn't exist, create it; If it does, leave it as it may be customized
if [ -e /data/ubuntu/etc/ubuntu-session.d/acclaim.conf ]
then 
	echo "acclaim.conf exists!  Leaving alone..."
else
	echo "GRID_UNIT_PX=10\nQTWEBKIT_DPR=2.5" >> /data/ubuntu/etc/ubuntu-session.d/acclaim.conf
fi

