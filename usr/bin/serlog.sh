#!/bin/bash

# Maybe add some input sanitization later...

# Configure the serial port settings (115.2 kbaud)
stty -F /dev/$1 115200 ignbrk -brkint -icrnl -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke
# Print serial port input on stdout, removing null characters (which screw up journalctl)
tr < /dev/$1 -d '\000'
