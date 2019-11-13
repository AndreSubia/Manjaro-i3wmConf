#!/bin/sh

music=""

if [ "$(mocp -Q %state)" != "STOP" ];then
    SONG=$(mocp -Q %song)
    if [ -n "$SONG" ]; then
        echo "$music" "$(mocp -Q %artist) - $SONG" "$music"
    else
        basename "$(mocp -Q %file)"
    fi
else
    echo ""
fi
