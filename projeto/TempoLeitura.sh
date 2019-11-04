#!/bin/bash

if [[ -z $1 ]]
then 
    echo "Ops, você precisa passar um arquivo como argumento!"
    exit 1
fi

if [ -e $1 ]
then
    echo "Arquivo existe e se chama $1"
else
    echo "Ops, arquivo não existe!"
    exit 1
fi
read -p "Em sua opnião, quantas palavras um usuário consegue ler por minuto? Pesquisas no Google indicam 150 palavras por minuto, mas permitimos que você escolha: " velocidadeLeitura


let contarPalavras=$(wc -w < $1)

tempoLeitura1=$(echo "scale=0; $contarPalavras*60/$velocidadeLeitura" | bc)
tempoLeituraM=$(echo "scale=0; $tempoLeitura1 / 60" | bc)
tempoLeituraS=$(echo "scale=0; $tempoLeitura1 % 60" | bc)

#echo "O arquivo $1, contém $contarPalavras palavras e será lido em $tempoLeitura1""s ou $tempoLeituraM" minutos e "$tempoLeituraS"s", levando a média descrita acima em consideração."

zenity --info --text="O arquivo $1, contém $contarPalavras palavras e será lido em $tempoLeitura1""s \n ou $tempoLeituraM minutos e "$tempoLeituraS"s, levando a média descrita acima em consideração." --width="450" height="120"