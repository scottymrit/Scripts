#!/bin/sh
curl --digest --user dev:dev -X PUT --data-binary "<?xml version="1.0" encoding="UTF-8"?><wca.filing.request xmlns='http://wca.int.thomson.com/V1/CompanyAuthority'><filing.data><filing>EDGAR</filing><filing.date>2009/05/28</filing.date ><number.of.relationships>814</number.of.relationships></filing.data></wca.filing.request>" --header 'Content-Type: text/xml' http://ctwca0001-04:8080/wca-webservices/V1/CompanyAuthority/Filing/IF38CF6B741E911DDAD6B0014224D2780