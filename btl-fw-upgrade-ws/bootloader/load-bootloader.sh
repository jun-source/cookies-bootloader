#!/bin/bash

while getopts "f:eh" options;
do
	case "${options}" in
	  e)
		# Erase contains of main flash
		$PATH_SCMD/commander device -d $DEVICE masserase
		;;
	  f)
		# Specify the path of the bootloader's binary
		$PATH_SCMD/commander flash -d $DEVICE ${OPTARG}
		;;
	  h)
		# Echo options available
		echo "-e: Erase contains of main flash"
		echo "-f: Specify the path of the bootloader's binary"
		;;
	  *)
		echo "Unknown option"
		exit 1
		;;
	esac
done
exit 0
