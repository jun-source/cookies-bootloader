#!/bin/bash
if [ $1 == ""]
	then
		echo "No arguments passed"
		echo "Usage: <script> options: < -p | -h >"
		exit 1
fi

while getopts "p:h" options;
do
	case "${options}" in
	  p)
		 echo
		 echo "Loading firmware image ${OPTARG}..."
		 ./bt_host_uart_dfu -u /dev/ttyUSB0 -b 115200 -f -l 4 ${OPTARG}
		 echo
		 ;;
	  h)
	     echo
	     echo "Help options:"
	  	 echo "  -h				Show help options"
		 echo
		 echo "Application options:"
		 echo "  -p				Path of firmware image to be loaded"
		 echo
		 ;;
	  *)
	     echo
		 echo "Unknown option"
		 echo "Usage: <script> options: < -p | -h >"
		 echo
		 exit 1
		 ;;
	esac
done
exit 0
