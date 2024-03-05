#! /bin/bash
#
#
echo "enter filename"
read a
if [ -e $a ];
then
        echo "file exists"
else
        echo "file not exists"
fi
