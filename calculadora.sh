#! /bin/bash

function suma(){
echo "La suma de $1 y $2 es: "
echo $1 $2 | awk '{ print $1 + $2 }' 
}

function resta(){
echo "La resta de $1 y $2 es: "
echo $1 $2 | awk '{ print $1 - $2 }' 
}
function multiplicacion(){
echo "La multiplicacion de $1 y $2 es: "
echo $1 $2 | awk '{ print $1 * $2 }' 
}
function division(){
echo "La division entre $1 y $2 es: "
echo $1 $2 | awk '{ print $1 / $2 }' 
}

echo "Introduce primer numero: "
read op1

echo "Introduce segundo numero: "
read op2

echo "Introduce operacion (+|-|x|/): "
read op


case $op in 
	+) suma $op1 $op2;;
	-) resta $op1 $op2;;
	x) multiplicacion $op1 $op2;;
	/) division $op1 $op2;;

esac