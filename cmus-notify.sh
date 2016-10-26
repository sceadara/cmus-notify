#!/bin/sh
if [ ! -x /usr/bin/cmus-remote ];
then
    echo "cmus is not installed."
    exit
fi

#Cur_song=$(cmus-remote -Q | grep tag | head -n 3 | sort -r | cut -d ' ' -f 3- )
ARTIST=$(cmus-remote -Q 2>/dev/null | grep -m 1 artist | cut -d " " -f 3- )
TITLE=$(cmus-remote -Q 2>/dev/null | grep -m 1 title | cut -d " " -f 3- )
ALBUM=$(cmus-remote -Q 2>/dev/null | grep -m 1 album | cut -d " " -f 3- )
STREAM=$(cmus-remote -Q 2>/dev/null | grep stream | tail -n1 | cut -d " " -f 2- )

if [ -z "$ARTIST" ];
then
    if [ -z "$STREAM" ];
    then
        Cur_song=("No - Thing")
    else
        Cur_song=("$STREAM")
    fi
else
    Cur_song=("$ARTIST
$TITLE
$ALBUM")
fi

notify-send -i gnome-mplayer -t 4000 "$Cur_song"
