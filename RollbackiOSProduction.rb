read -r -p "❗️确定回滚Production? [Y/N] " input

case $input in
[yY][eE][sS]|[yY])
appcenter codepush rollback -a <ownerName>/<appName> Production
;;

[nN][oO]|[nN])
;;

esac
