#!/bin/bash

daemonrun=$(ps -eo pid,cmd | grep -v grep| grep -i -e "sshd" -e "httpd" -e "init" -e "systemd" -e "syslogd")

if [[ ${daemonrun,,} == *"sshd"* || ${daemonrun,,} == *"init"* || ${daemonrun,,} == *"http"* ]]; then
	echo -e "PID\t Command\n"
	echo " Daemon process are running with pid and name $daemonrun"
else 
	echo "No Daemon process are running"
fi
