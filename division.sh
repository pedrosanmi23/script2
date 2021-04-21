#! /bin/bash
echo "La division entre $1 y $2 es: "
echo $1 $2 | awk '{ print $1 / $2 }' 