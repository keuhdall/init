#!/bin/sh
cat /etc/passwd | cut -d ":" -f1 -f3 -f6 | grep -v '#'
