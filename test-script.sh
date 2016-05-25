#!/bin/sh
# test-script
#

############ Parameters ############
from="someone@gmail.com"
to="recipient@someone.com"
smtp="smtp.gmail.com:587"
username="USERNAME"
pass="PASSWORD"
message="content of the email"
subject="subject of the email"
sendmessage="sendemail -f from -t to -u subject -s $smtp -o tls=yes -xu $username -xp $pass -m $message"
############ End Parameters ############

$sendmessage
