#! /bin/bash
echo "La multiplicacion de $1 y $2 es: "
echo $1 $2 | awk '{ print $1 * $2 }' 