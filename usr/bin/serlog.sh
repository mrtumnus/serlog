#!/bin/bash

stty -F /dev/$1 115200 ignbrk -brkint -icrnl -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke
tr < /dev/$1 -d '\000'
