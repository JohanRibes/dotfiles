#!/bin/bash
x=`textract -v char=$1 ~/.telnet/config`
eval "$x"
tex $ip $user $password

