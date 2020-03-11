read -r -p "❗️确定? [Y/N] " input

case $input in
[yY][eE][sS]|[yY])

read -r -p "❗️iOS APP版本号 " input
target_binary_version=$input
echo $target_binary_version

read -r -p "❗️热更新版本描述 " input
description=$input
echo $description

appcenter codepush release \
--app <ownerName>/<appName> \
--deployment-name Staging \
--update-contents-path ../ios/Codepush \
--target-binary-version $target_binary_version \
--description $description \
#--rollout 100 \
#--mandatory \

;;

[nN][oO]|[nN])
;;

esac

#已用参数的说明
#[-a|--app <ownerName>/<appName>]
#[-d|--deployment-name <deploymentName>]
#[-с|--update-contents-path <updateContentsPath>]
#[-t|--target-binary-version <version>]
#[--description <description>]
#[-m|--mandatory]
#[-r|--rollout <rolloutPercentage>]
#未用参数的说明
#[-x|--disabled]
#[--disable-telemetry]
#[-v|--version]
#[-k|--private-key-path <privateKeyPath>]
#[--disable-duplicate-release-error]
