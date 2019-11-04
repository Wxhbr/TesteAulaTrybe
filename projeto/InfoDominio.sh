#!/bin/bash
DOMAIN_REGEXP="[a-zA-Z]+(\.[a-zA-Z]+)"
if [[ -z "$1" ]]; then
    #echo "Ops, você precisa passar um domínio válido como argumento!"
    zenity --error --text="Ops, você precisa passar um domínio válido como argumento!" --width="200" height="80"
    exit 1
fi
if [[ $1 =~ $DOMAIN_REGEXP ]]; then
  echo $1
else
  #echo "Ops, argumento inválido!"
  zenity --error --text="Ops, argumento inválido!" --width="200" height="80"
  exit 1
fi
whois $1 > "$1.info"

