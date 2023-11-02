#!/usr/bin/env bash


if [ "`git pull https://github.com/bajramishpetim/exam4.git`" == "Already up-to-date." ] && [ "`git pull https://gitlab.com/bajramishpetim/exam4.git`" == "Already up-to-date." ]
then
    echo "Nothing to update!"
elif ! [ "`git pull https://gitlab.com/bajramishpetim/exam4.git`" == "Already up-to-date." ]
then
    git pull https://gitlab.com/bajramishpetim/exam4.git main
    git push mirror

elif ! [ "`git pull https://github.com/bajramishpetim/exam4.git`" == "Already up-to-date." ]
then
    git pull https://github.com/bajramishpetim/exam4.git master
    git push mirror

fi
