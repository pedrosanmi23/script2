#!/bin/bash

echo "URL del feed rss"
read url
html=""
wget -nv -cO - $url > feedrss
linea=$(grep "<item>" feedrss -m 1 -n | cut -f1 -d:)
sed "1,$linea""d" feedrss | grep -E "<title>|<pubDate>"  | sed -e 's/<title>//g' -e 's/<pubDate>//g' |sed -e 's/<\/title>//g' -e 's/<\/pubDate>//g' | sed 's/<!\[CDATA\[//g' | sed 's/\]\]>//g' > salida.txt
let CONT=0
while IFS='' read -r linea || [[ -n "$linea" ]]; do
    let CONT++
    if [[ CONT -eq 2 ]]; then
    	fecha=$(date -d "$linea" +%d-%m-%Y\ %T)
    	html+="<span>$fecha</span>"
    	CONT=0
    else
    	html+="<h1>$linea</h1>"
    fi
done < salida.txt
rm salida.txt
echo $html > index.html
