#!/bin/bash
# A simple Bash script to remove a ssh host, by Patricio Tula     
sed < $2 's/^Host/\n&/' | sed '/^Host '"$1"'$/,/^$/d;/^$/d' > tmp && cat tmp > $2 && rm tmp