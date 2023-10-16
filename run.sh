#!/bin/bash

while true; do
    response=$(zenity --question --text="Do you miss me?")

    if [ $? -eq 1 ]; then
        xmessage -center -buttons "Return:0,Exit:1" -default "You don't miss me? </3 You gotta deal with me then!" "You don't miss me? </3 You gotta deal with me then!"
        choice=$?
        if [ $choice -eq 1 ]; then
            zenity --info --text="Why are you trying to run away? You can't escape me that easily!"
            continue
        fi
    else
        xmessage -center -buttons "Exit:0" -default "Haha, I'm not letting you close me!" "Haha, I'm not letting you close me!"
    fi
done
