#!/bin/bash

set -x
source /wca/.cluster_hosts 
#source /wca/.wca_profile

for host in `for f in $hosts; do echo $f | sed -e 's/\.int.westgroup.com//' ; done`; do
    echo $host
    
    ssh ${host} "source $HOME/.profile; $CATALINA_HOME/bin/catalina.sh stop"   
    if [ -f /wca/tomcat.${host}/webapps/wca-webservices.war ]; then

	ssh ${host} "source $HOME/.profile; $CATALINA_HOME/bin/catalina.sh start"
    else
	echo "Not starting tomcat War File wca-webservices.war does not exist!"
	exit 1
    fi 
done
