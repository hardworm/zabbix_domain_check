#!/bin/bash

#day for domain paid
#create hardworm@gmail.com

DOMAIN="$1"

D1=$(whois $1 | grep -E 'paid|Expir' | grep -o -E '[0-9]{4}.[0-9]{2}.[0-9]{2}|[0-9]{2}/[0-9]{2}/[0-9]{4}' | tr . / )
SDIFF1=$((`date -d "$D1" '+%s'`))
SDIFF2=$((`date '+%s'`))
s=$(($SDIFF1 - $SDIFF2))
d=$(($s/86400))
echo $d