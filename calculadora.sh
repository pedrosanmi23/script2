#! /bin/bash


echo "Introduce primer numero: "
read op1

echo "Introduce segundo numero: "
read op2

echo "Introduce operacion (+|-|x|/): "
read op


case $op in 
	+) bash ./suma.sh $op1 $op2;;
	-) bash ./resta.sh $op1 $op2;;
	x) bash ./multiplicacion.sh $op1 $op2;;
	/) bash ./division.sh $op1 $op2;;

esac