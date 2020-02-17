#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "$DIR"

if [ -n "$1" ]
then
    if  [[ ! $1 =~ ^[0-9]{2}-[0-9]{2}-[0-9]{4}$ ]]
    then
        echo "date ($1) not valid"
    fi
    today=$1
else
    today=`date +"%d-%m-%Y"`
fi

echo "$today"

if [ -n "$2" ]
then
  blocks=$2
else
  # ID's van 32x32 km gebieden om de BGT te downloaden. Let op, de ID's mogen geen voorloopnullen bevatten.
  blocks="39 45 48 50 51 54 55 56 57 58 59 60 61 62 63 74 75 96 97 98 99 104 105 106 107 110 111 145 148 149 150 151 156 157 158 159 180 181 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 224 225 228 229 230"
fi

echo "$blocks"

target="/etlresult/$today/bgt"

echo "$target"

if [ ! -d "$target" ]
then
    mkdir -p $target
fi

"$DIR/download-bgt.sh" $target "$blocks"

targetconfig="$DIR/options/custom_$today.args"

if [ ! -f "$targetconfig" ]
then
    cp "$DIR/options/custom.args" $targetconfig
    echo "input_dir=$target" >> $targetconfig
fi

"$DIR/etl-imgeo.sh" $targetconfig
