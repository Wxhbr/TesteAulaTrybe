#!/bin/bash

xcowsay  --at=400,250 "Menu para scripts do Projeto de Shell Script "

xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'

teste=$(zenity --list --radiolist --text "<b>Please</b> make a selection:" --hide-header --column "Buy" --column "Item" FALSE "Fazer download das informações de um domínio." FALSE "Enviar mensagens para o Slack." FALSE "Estimar o tempo de leitura de um arquivo texto." FALSE "Frases da vaquinha." FALSE "Sair do Menu.")

while [ "$teste" == "Sair do Menu." ];do
     
     if [ "$teste" ==  "Fazer download das informações de um domínio." ]; then
         #read -pr "Qual o domínio a ser requisitado: " entrarArgumento
         entrarArgumento=$(zenity --entry --text "Qual o domínio a ser requisitado: " --title "Script Domínio" --entry-text="");
         ./dominio.sh "$entrarArgumento"

         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         
     elif [ "$teste" ==  "Enviar mensagens para o Slack." ]; then

          #read -pr "Escreva a mensagem: " entrarArgumento
          entrarArgumento=$(zenity --entry --text "Escreva a mensagem: " --title "Script Slack" --entry-text="");
         ./slack.sh "$entrarArgumento"

         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         
    
     elif [ "$teste" ==  "Estimar o tempo de leitura de um arquivo texto." ]; then
      
         #read -pr "Escreva o caminho do arquivo, caso o arquivo não esteja no mesmo diretório, informe o caminho completo: " entrarArgumento
         entrarArgumento=$(zenity --entry --text "Escreva o caminho do arquivo, caso o arquivo não esteja no mesmo diretório, informe o caminho completo: " --title "Script Tempo para Leitura" --entry-text="");
         ./tempoleitura.sh "$entrarArgumento"

         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         

     elif [ "$teste" ==  "Frases da vaquinha." ]; then

         fortune brasil | echo -e
         fortune brasil | xcowsay --at=400,250 
         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         

     elif [ "$teste" == "Sair do Menu."  ]; then

         echo
         echo -e "Saindo do script \n#VQV #gotrybe"
         xcowsay --at=400,250 $'Saindo do script \n#VQV #gotrybe'
         break
         
         exit 1

      else
         echo
         echo -e "Opção inválida, use os números entre 1 a 5 e tente de novo."
         xcowsay --at=400,250 "Opção inválida, use os números entre 1 a 5 e tente de novo."
         echo -e "Opções de menu\n1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         
     fi  
teste=$(zenity --list --radiolist --text "<b>Please</b> make a selection:" --hide-header --column "Buy" --column "Item" FALSE "Fazer download das informações de um domínio." FALSE "Enviar mensagens para o Slack." FALSE "Estimar o tempo de leitura de um arquivo texto." FALSE "Frases da vaquinha." FALSE "Sair do Menu.")

exit 1
done
   



