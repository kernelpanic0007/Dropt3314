#!/bin/bash
#gputempraw=`amd-info | grep Core | awk 'NR==2'` && gputemp=`echo "$gputempraw" | awk '{print $2}'` && echo $gputemp | sed 's/[^a-zA-Z0-9]//g' | sed 's/132m//g' |sed 's/C0m//g'
amd-info 0 > /var/log/amdbc250info.log
