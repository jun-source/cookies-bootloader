#!/bin/bash
if [ $1 == ""]
	then
		echo "No arguments passed"
		echo "Usage: <script> options: < -e | -p | -h >"
		exit 1
fi

while getopts "p:eh" options;
do
	case "${options}" in
	  e)
		 echo
		 echo "Deleting contains of main flash"
		 $PATH_SCMD/commander device -d $DEVICE masserase
		 echo
		 ;;
	  p)
		 echo
		 echo "Loading ${OPTARG}..."
		 $PATH_SCMD/commander flash -d $DEVICE ${OPTARG}
		 echo
		 ;;
	  h)
		 echo
		 echo "Help options:"
	  	 echo "  -h				Show help options"
		 echo
		 echo "Application options:"
		 echo "  -e				Erase contains of main flash"
		 echo "  -p				Path of bootloader to be loaded"
		 echo
		 ;;
	  *)
	     echo
		 echo "Unknown option"
		 echo "Usage: <script> options: < -e | -p | -h >"
		 echo
		 exit 1
		 ;;
	esac
done
exit 0
