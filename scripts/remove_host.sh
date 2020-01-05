#!/bin/bash
# A simple Bash script to remove a ssh host, by Patricio Tula
sed -n "Host $1\n\
      \t HostName $2\n\
      \t User $3\n\
      \t IdentityFile $4\n" $5
