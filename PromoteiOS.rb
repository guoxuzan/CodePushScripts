read -r -p "❗️确定? [Y/N] " input

case $input in
[yY][eE][sS]|[yY])

#read -r -p "❗️iOS APP版本号 " input
#target_binary_version=$input
#echo $target_binary_version

read -r -p "❗️热更新❗️正式版本描述 " input
description=$input
echo $description

appcenter codepush promote \
--app <ownerName>/<appName> \
--source-deployment-name Staging \
--destination-deployment-name Production \
--description $description \
#--target-binary-version $target_binary_version \
#--rollout 100 \

;;

[nN][oO]|[nN])
;;

esac

#已用参数的说明
#[-a|--app <ownerName>/<appName>]
#[-s|--source-deployment-name <sourceDeploymentName>]
#[-d|--destination-deployment-name <destDeploymentName>]
#[--description <description>]
#[-t|--target-binary-version <targetBinaryVersion>]
#[-r|--rollout <rolloutPercentage>]
#未用参数的说明
#[--disable-duplicate-release-error]
#[--disable-telemetry]
