#!/bin/bash

curl -s https://checkip.amazonaws.com | xargs -I{} sudo sed -ri "s/([0-9]{1,3}\.){3}[0-9]{1,3}/{}/g" '/var/lib/jenkins/jenkins.model.JenkinsLocationConfiguration.xml' && sudo systemctl stop jenkins && sudo systemctl start jenkins > /dev/null

