#!/bin/bash

NUMBER_OF_FILES=`ls -1 IPMIView_V*_bundleJRE_Linux_x64_*.tar.gz 2> /dev/null | wc -l`

if [ "$NUMBER_OF_FILES" == "0" ]
then
	echo "There are no IPMIView source packages in this directory."
	echo "Please go to ftp://ftp.supermicro.com/utility/IPMIView/Linux/ to download the _x64_ .tar.gz file and try again."
	exit
fi


if [ "$NUMBER_OF_FILES" != "1" ]
then
	echo "There are multiple IPMIView source packages in this directory."
	echo "Please remove old .tar.gz files and try again."
	exit
fi

VERSION=`ls IPMIView_V*_bundleJRE_Linux_x64_*.tar.gz | sed -r 's/IPMIView_V(.*)_bundleJRE_Linux_x64_.*\.tar\.gz/\1/'`

cp debian/changelog.dist debian/changelog

dch -v $VERSION -m "New upstream version" -D stable
