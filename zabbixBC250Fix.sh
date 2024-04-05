#!/bin/bash
##########################
### Fix after BZMiner
##########################

#download necessary scripts

wget https://raw.githubusercontent.com/kernelpanic0007/hiveOSScripts/main/zabbix_agentd.conf -O /etc/zabbix/zabbix_agentd.conf

#replace zabbix HostName with systems
sed -i 's/zabbixipaddressvar/192.168.254.25/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/hostnamevar/'"$HOSTNAME"'/g' /etc/zabbix/zabbix_agentd.conf

#restart zabbix agent
systemctl restart zabbix-agent
