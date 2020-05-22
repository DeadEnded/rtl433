#!/bin/bash

# A simple script that will receive events from a RTL433 SDR

# Version 3.0: Adapted for the new output format of rtl_433

# Remove hash on next line for debugging
#set -x

export LANG=C
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

# Start the listener
/usr/local/bin/rtl_433 -M newmodel -F mqtt://mosquitto:1883,events=rtl433/events,devices=rtl433/devices[/type][/model][/subtype][/channel],states #=rtl433/states
