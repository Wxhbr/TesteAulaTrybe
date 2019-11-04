#!/bin/bash

if [[ -z $* ]]
then 
    #echo "Ops, você precisa passar uma mensagem como argumento!"
    zenity --error --text="Ops, você precisa passar uma mensagem como argumento!" --width="200" height="80"
    exit 1
else
    echo "mensagem enviada! $*"
fi

curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$*\"}" https://hooks.slack.com/services/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