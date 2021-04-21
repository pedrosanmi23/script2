#!/bin/bash

echo "URL del feed rss"
read url
wget -nv -cO - $url > feedrss
linea=$(grep "<item>" feedrss -m 1 -n | cut -f1 -d:)
sed "1,$linea""d" feedrss | grep -E "<title>|<pubDate>"  | sed -e 's/<title>//g' -e 's/<pubDate>//g' |sed -e 's/<\/title>//g' -e 's/<\/pubDate>//g' | sed 's/<!\[CDATA\[//g' | sed 's/\]\]>//g'

