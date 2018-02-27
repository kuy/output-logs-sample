#!/bin/sh

# ref:http://kenknown.blog42.fc2.com/blog-entry-202.html

count=1
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
    echo  "+"
    count=0
  elif [ "${count_ten}" = "0" ] ; then
    echo -n "+"
  else
    echo -n "."
  fi
  #--------------------
  count=$((count+1))
  let count_ten=${count}%10
  let count_min=${count}%60
  #--------------------
  sleep ${latency}
done
