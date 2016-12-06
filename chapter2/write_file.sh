#!/bin/bash
cat <<EOF>log.txt
LOF FILE HEADER
This is a test log file
Function: System statistics
EOF
cat log.txt
rm log.txt
