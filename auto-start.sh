#!/usr/bin/env bash
dir=auto
file="$1"
usage(){

cat <<EOF
This script configures a VM for autostart on boot
e.g. $0 nagios.cfg
EOF
exit 1
}

[ $file ]    || usage
[ -f $file ] || { echo "Config $file not found" && exit 1; }
[ -d $dir ]  && cd $dir || { echo "$dir not found" && exit 1; }
ln -f -s ../$file $file
