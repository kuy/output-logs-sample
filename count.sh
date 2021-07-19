#!/bin/sh

# forked:https://github.com/f-katkit/output-logs-sample
# ref:http://kenknown.blog42.fc2.com/blog-entry-202.html

count=1
times=0
latency=1     # sleep $latency(sec)
#----------------------
if [ $1 ] ; then
  latancy=${1}
fi
#----------------------
while [ 1 ]
do
  #--------------------
  if [ "${count_min}" = "0" ] ; then
    echo  "| [${times}]"
    count=0
    times=$((times+1))
  elif [ "${count_ten}" = "0" ] ; then
    echo -n "*"
  else
    echo -n "."
  fi
  #--------------------
  count=$((count+1))
  let count_ten=${count}%5
  let count_min=${count}%10
  #--------------------
  sleep ${latency}
done
