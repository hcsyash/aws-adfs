#!/bin/bash
source config.properties

aws-adfs login --adfs-host $adfsServer --region $awsRegion --company_domain $company_domain --extranet_ip $extranet_ip --no-sspi