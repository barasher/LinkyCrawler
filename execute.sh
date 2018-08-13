#!/bin/sh

if [ -z "$LINKY_USERNAME" ]; then
	echo "Variable LINKY_USERNAME not set"
	exit 1
fi
if [ -z "$LINKY_PASSWORD" ]; then
	echo "Variable LINKY_PASSWORD not set"
	exit 1
fi

cd /root/crawler
./gen_json.sh

cat linky.log
