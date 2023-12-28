#!/bin/bash
$SI_CMD_DIR/commander device -d $DEVICE masserase
$SI_CMD_DIR/commander flash -d $DEVICE images/bootloader-uart-bgapi-combined.s37
