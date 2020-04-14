#!/bin/bash

RESULT=`ip -4 addr show tun0 2>/dev/null | grep -oP '(?<=inet\s)\d+(\.\d+){3}'`

if [ $RESULT ] 
then 
	echo HTB:🔗$RESULT
else
	echo HTB:🚫
fi
