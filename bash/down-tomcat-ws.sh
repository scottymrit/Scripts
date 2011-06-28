#!/bin/bash

set -x
source /wca/.cluster_hosts 
#source /wca/.wca_profile

for host in `for f in $hosts; do echo $f | sed -e 's/\.int.westgroup.com//' ; done`; do
    echo $host
    
    ssh ${host} "source $HOME/.profile; $CATALINA_HOME/bin/catalina.sh stop"   
    
done
