#!/bin/bash

while getopts "p:" options;
do
	case "${options}" in
	  p)
		 GBL_PATH=${OPTARG}
		 ;;
	  *)
		 echo "Unknown option"
		 exit 1
		 ;;
	esac
done
./bt_host_uart_dfu -u /dev/ttyUSB0 -b 115200 -f -l 4 $GBL_PATH
exit 0
