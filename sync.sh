#!/usr/bin/env bash
cd /home/shpetim/exam4
if [ "`git pull origin`" == "Already up-to-date." ] && [ "`git pull origin1`" == "Already up-to-date." ]
then
    echo "Nothing to update!"
elif ! [ "`git pull origin1`" == "Already up-to-date." ]
then
    git pull origin1 main
    git push mirror

elif ! [ "`git pull origin`" == "Already up-to-date." ]
then
    git pull origin main
    git push mirror

fi
