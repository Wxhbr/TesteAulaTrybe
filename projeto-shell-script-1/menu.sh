#!/bin/bash

xcowsay "Menu para scripts do Projeto da 1a. Semana - Shell Script "

select i in "Fazer download das informações de um domínio com o 'whois'." "Enviar mensagens para o Slack a partir da shell." "Estimar o tempo de leitura de um arquivo texto." "Frases da vaquinha do Shell." "Sair do menu."
do

   case $i in

      "Fazer download das informações de um domínio com o 'whois'.")
         echo "Carregando script"
         read -p "Qual o domínio a ser requisitado: " entrarArgumento
         ./dominio.sh $entrarArgumento
         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         ;;

      "Enviar mensagens para o Slack a partir da shell.")
         echo "Slack"
         ;;

      "Estimar o tempo de leitura de um arquivo texto.")
         echo "Contar Palavras"
         ;;

        "Frases da vaquinha do Shell.")
         fortune brasil | xcowsay
         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         ;;

        "Sair do menu.")
         echo -e "Saindo do programa \nObrigado!"
         break
         ;;

      *)
         echo "Opção inválida (1-4), tente de novo."
         ;;

   esac

done