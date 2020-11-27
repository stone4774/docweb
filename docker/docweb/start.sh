#!/bin/bash


#PEACH_TARGET=""
#GIT_USERNAME=""
#GIT_PASSWORD=""


echo "target: $PEACH_TARGET"
host_env="TARGET=${PEACH_TARGET}"
line=$(sed -n '/TARGET/=' custom/app.ini)
newline=$(expr $line - 1)
sed -i "$line d" custom/app.ini
sed -i "${newline} a\\${host_env}" custom/app.ini


expect -c "
    set timeout -1
    spawn ./peach web
    expect {
      \"*Password\" {
        send \"${GIT_PASSWORD}\n\"; exp_continue;
      }
      \"*Username\" {
        send \"${GIT_USERNAME}\n\"; exp_continue;
      }
      eof {
        exit 2;
      }
      timeout {
        exit 3;
      }
    }
"
