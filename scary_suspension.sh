#!/bin/bash

# Get the IDs of the core pointer and keyboard
core_pointer_id=$(xinput list --id-only 'pointer:Core Pointer')
keyboard_id=$(xinput list --id-only 'keyboard:')

# Disable all input devices except core pointer and keyboard
device_ids=$(xinput list --id-only)

for device_id in $device_ids; do
    if [ "$device_id" != "$core_pointer_id" ] && [ "$device_id" != "$keyboard_id" ]; then
        xinput disable "$device_id"
    fi
done

./timer.sh 30

for device_id in $device_ids; do
    if [ "$device_id" != "$core_pointer_id" ] && [ "$device_id" != "$keyboard_id" ]; then
        xinput enable "$device_id"
    fi
done