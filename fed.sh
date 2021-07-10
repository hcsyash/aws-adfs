#!/bin/bash
source config.properties

aws-adfs login --adfs-host $adfsServer --region $awsRegion --no-sspi