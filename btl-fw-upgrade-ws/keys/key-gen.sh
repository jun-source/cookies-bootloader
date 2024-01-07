#!/bin/bash
if [ $1 == ""]
	then
		echo "No arguments passed"
		echo "Usage: <script> options: < -a | -e | -f | -h >"
		exit 1
fi

while getopts "aefh" options;
do
	case "${options}" in
	  a)
	     echo
	     echo "Generating AES-CTR-128 key"
		 $PATH_SCMD/commander util genkey --type aes-ccm --outfile $PWD/app-encrypt-key
		 echo
		 ;;
	  e)
	     echo
		 echo "Generating ECDSA-P256-SHA256 key pair"
		 $PATH_SCMD/commander util genkey --type ecc-p256 --privkey $PWD/app-sign-key --pubkey $PWD/app-sign-key.pub --tokenfile $PWD/app-sign-pubkey-tokens.txt
		 echo
		 ;;
	  f)
		 echo "Flashing ECDSA key pair and AES key to $DEVICE"
		 $PATH_SCMD/commander flash -d $DEVICE --tokengroup znet --tokenfile app-encrypt-key --tokenfile app-sign-pubkey-tokens.txt
		 ;;
	  h)
	     echo
	     echo "Help options:"
	  	 echo "  -h				Show help options"
		 echo
		 echo "Application options:"
		 echo "  -a				Generating AES-CTR-128 key"
		 echo "  -e				Generating ECDSA-P256-SHA256 key pair"
		 echo "  -f				Flashing ECDSA key pair and AES key to $DEVICE"
		 echo
		 ;;
	  *)
	     echo
		 echo "Unknown option"
		 echo "Usage: <script> options: < -a | -e | -f | -h >"
		 echo
		 exit 1
		 ;;
	esac
done
exit 0
