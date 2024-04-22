#!/bin/bash
#
# Do not run this script with root
# Instead it will ask for password
# when needed
#

# Run wl-paste for automatically sycing the clipboard contents
# with piknik clipboard
/usr/bin/wl-paste -w /usr/bin/piknik --paste &

# Start rkvm client with root priveledges
sudo /usr/bin/rkvm-client /etc/rkvm/client.toml &


