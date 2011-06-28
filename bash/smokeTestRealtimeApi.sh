#!/bin/bash
echo running smoke test

. /wca/.cluster_hosts

for host in ${hosts[@]}; do
    echo ""
    echo $host
    curl --digest --user dev:dev -X GET http://${host}:8080/wca-webservices/V1/CompanyAuthority/Lookup/CompanyId/5099832

    done
echo ""


