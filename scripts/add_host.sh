#!/bin/bash
# A simple Bash script to add a new ssh host, by Patricio Tula
echo "Host $1\n\
      \t HostName $2\n\
      \t User $3\n\
      \t IdentityFile $4\n"
