#!/bin/bash
# This script will do a rolling start after deploying the mandm-dist
#

set -x
source /wca/.cluster_hosts 

# Start the deploy
export UNZIP2DIR=/wca/mandm.`date '+%Y%m%d.%H%M'`
unzip /wca/wca-mandm-3.0-dist.zip -d ${UNZIP2DIR}
mv /wca/wca-mandm-3.0-dist.zip ${UNZIP2DIR}
rm /wca/mandm
ln -s ${UNZIP2DIR} /wca/mandm
unset UNZIP2DIR

# Loop through all of the hosts and do a rolling start
for host in `for f in $hosts; do echo $f | sed -e 's/\.int.westgroup.com//' ; done`; do
    
    echo stopping $host
    ssh wca@${host} /wca/mandm/bin/mandm-stop
    sleep 10

    echo starting $host
    ssh wca@${host} /wca/mandm/bin/mandm-start
    sleep 10
    tail -n 10 /wca/mandm/logs/${host}/mandm.log
    echo started ${host}
done