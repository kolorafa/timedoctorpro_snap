#!/bin/bash

#env
#pwd
TDDIR=$SNAP/opt/timedoctorpro
cd $TDDIR
PATH=$TDDIR:$PATH
export PATH
if [ -z "$LD_LIBRARY_PATH" ] ; then
    LD_LIBRARY_PATH=$TDDIR
else
    LD_LIBRARY_PATH=$TDDIR:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH
QT_PLUGIN_PATH=$TDDIR
export QT_PLUGIN_PATH
#bash
export FONTCONFIG_PATH=$SNAP/etc/fonts
exec $TDDIR/timedoctorpro.run "$@"
