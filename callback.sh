#!/bin/sh
if ps -ef | grep -v grep | grep yourserver.com ; then
exit 0
else
  sshpass -p 'password' ssh -o "StrictHostKeyChecking no" -f -N -T -R2221:localhost:22 yourserver.com -p22 -l username >> /dev/null &
fi