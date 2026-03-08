#!/bin/sh
set -e

if [ "$(id -u)" -ne 0 ]; then
    echo "Error: this script must be run as root" >&2
    exit 1
fi

EXECUTABLE="$(pwd)/lincstation_leds"

if [ ! -x "$EXECUTABLE" ]; then
    echo "Error: $EXECUTABLE not found or not executable" >&2
    exit 1
fi

# Enable the i2c-dev module which is required
modprobe i2c-dev

# Run the executable in the background
$EXECUTABLE &

exit 0
