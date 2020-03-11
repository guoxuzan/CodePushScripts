read -r -p "❗️确定回滚Staging? [Y/N] " input

case $input in
[yY][eE][sS]|[yY])
appcenter codepush rollback -a <ownerName>/<appName> Staging
;;

[nN][oO]|[nN])
;;

esac
