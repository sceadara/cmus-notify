# cmus-notify

cmus-notify uses libnotify notify-send to display track changes live on screen.

It can also get status infos out of radio-streams.

Usage:

1. Copy cmus_notify.sh to ~/.cmus/ and make executable (chmod +x ~/.cmus/cmus-notify.sh).

2. Set the status_display_program variable in cmus

    :set status_display_program=/home/USER/.cmus/cmus-notify.sh
    
3. It's always wise to :save

4. Enjoy your desktop notifications live from cmus!
