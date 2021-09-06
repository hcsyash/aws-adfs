#!/bin/bash
source config.properties

aws-adfs login --adfs-host $adfsServer --region $awsRegion --company_domain $company_domain --no-sspi