#!/bin/bash

if [ $# -eq 1 ]; then
	case "$1" in
		"multus-basic")
			echo "Basic tests"
			/multus-test/scripts/basic.sh
			;;
		"multus-basic-openshift")
			echo "Basic tests on OpenShift"
			/multus-test/scripts/basic-openshift.sh
			;;
	esac
fi

if [ "$?" -eq 0 ]; then
	echo "SUCCEED" >> /dev/termination-log
	exit 0
else
	echo "FAILED" >> /dev/termination-log
	exit 1
fi

#sleep infinity
