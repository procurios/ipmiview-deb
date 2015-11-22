#!/bin/bash

if [ "$3" == "" ];
then
	echo "Usage: $0 <ip> <username> <password>"
	exit
fi;

/usr/bin/java -Djava.library.path=/usr/lib/ipmiview/ -jar /usr/lib/ipmiview/iKVM.jar "$1" "$2" "$3" null 5900 623 2 0 >/dev/null