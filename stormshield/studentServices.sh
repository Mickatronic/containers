#!/bin/bash

#Demander un numéro d'ip
echo Donner votre numéro d\'étudiant
read -p 'Numero Etudiant : ' studentNumber
echo $studentNumber

echo Donner le prefix réseau (ex : 172.16)
read -p 'Numero Prefix : ' prefix
echo $prefixNumber


for i in {1..5}
do
  echo ip address add 172.16.$studentNumber.$i/24 dev ens33
  ip address add 172.16.$studentNumber.$i/24 dev ens33
done

#Supprimer les anciens container

#docker rm `docker ps -a -q`

#Lancer les containers


#


