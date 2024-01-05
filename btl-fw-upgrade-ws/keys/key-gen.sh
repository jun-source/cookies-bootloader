#!/bin/bash

while getopts "aef" options;
do
	case "${options}" in
	  e)
		 $PATH_SCMD/commander util genkey --type ecc-p256 --privkey $PWD/app-sign-key --pubkey $PWD/app-sign-key.pub --tokenfile $PWD/app-sign-pubkey-tokens.txt
		 ;;
	  a)
		 $PATH_SCMD/commander util genkey --type aes-ccm --outfile $PWD/app-encrypt-key
		 ;;
	  f)
		 $PATH_SCMD/commander flash -d $DEVICE --tokengroup znet --tokenfile app-encrypt-key --tokenfile app-sign-pubkey-tokens.txt
		 ;;
	  *)
		 echo "Unknown option"
		 exit 1
		 ;;
	esac
done
exit 0
