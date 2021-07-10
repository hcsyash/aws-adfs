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

IF "%DEBUG_FLAG%"=="-D" ( 
aws-adfs --verbose login --adfs-host %ADFS_SERVER% --region %AWS_REGION% --no-sspi
) ELSE (
aws-adfs login --adfs-host %ADFS_SERVER% --region %AWS_REGION% --no-sspi
)