#!/bin/sh
if pgrep -x fuzzel; then
    killall fuzzel
else
    fuzzel &
fi
