#!/bin/bash
#Eu sou Tryber e...

echo "Qual sua idade: >"

read IDADE

if [ $IDADE -ge 18 ]
then
    echo "Voce e maior de idade!"
else
    echo "voce e menor de idade!"
fi

echo "testePullResquest"
echo "Nova tentativa"