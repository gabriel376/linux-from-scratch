#!/bin/bash

sed -i "/declare -A VENDORS$/aVENDORS['02:42:ac:']=\"docker\"" /lib/udev/init-net-rules.sh

bash /lib/udev/init-net-rules.sh
cat /etc/udev/rules.d/70-persistent-net.rules
