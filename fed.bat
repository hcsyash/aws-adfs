@echo off

SET DEBUG_FLAG=""
IF "%1"=="-D" (
	SET DEBUG_FLAG=%1
)

SET ADFS_SERVER=""
SET AWS_REGION=""
FOR /F "tokens=1,2 delims==" %%G IN (config.properties) DO (set %%G=%%H)  
SET ADFS_SERVER=%adfsServer%  
SET AWS_REGION=%awsRegion%
SET DOMAIN=%company_domain%
SET EXTRANET_IP=%extranet_ip%
IF "%DEBUG_FLAG%"=="-D" ( 
aws-adfs --verbose login --adfs-host %ADFS_SERVER% --region %AWS_REGION% --company_domain %DOMAIN% --extranet_ip %EXTRANET_IP% --no-sspi
) ELSE (
aws-adfs login --adfs-host %ADFS_SERVER% --region %AWS_REGION% --company_domain %DOMAIN% --extranet_ip %EXTRANET_IP% --no-sspi
)