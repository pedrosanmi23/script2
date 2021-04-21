#! /bin/bash

echo "Introduce la ruta de un directorio"
read dir

ls -la $dir > dir.txt

rm -rfv $dir

