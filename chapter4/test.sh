#!/bin/bash

cat file | awk '
BEGIN{
    i=0;
    print "START"
}
{
    i++;
    print i
}
END {
    print "END"
}'
