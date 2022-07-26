#!/bin/bash
if [ "$1" == "" ]
then
echo "Analisador de URL"
echo "./analisador.sh sitealvo.com"
else
wget $1
clear
grep href index.html | grep "www" index.html | cut -d "/" -f3  > lista
for url in $(cat lista) ;do host $url ;done | grep "has address" | sort -u
rm index.html
rm lista
fi
