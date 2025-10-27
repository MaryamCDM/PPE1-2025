#!/usr/bin/bash
chmod +x code4final.sh

if [ $# -eq 0 ]; then
    echo "veuillez insérez un chemin"
    exit 1
fi

fichier=$1 #ici le $1 rerépesente le premier argument (ici pour lancer le script je dois faire ""./code4final.sh fr.txt" et "fr.txt" est le premier argument)
n=0 #création d'une variable qui compte le nombre de lignes

while read -r url; #boucle
do
    n=$((n+1)) #on ajoute un à chaque tour
    http_code=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    charset=$(curl -sI "$url" | grep -i "Content-Type" | sed -n 's/.*charset=\([^;[:space:]]*\).*/\1/p')
    [ -z "$charset" ] && charset="N/A"
    word_count=$(curl -s "$url" | wc -w)
    echo -e "$n\t$url\t$http_code\t$charset\t$word_count"
done < $fichier; #changements/écrasement de l'opération dans le fichier correspondant (ici normalement l'argument 1 doit correspondre à fr.txt)

#code utilisé pour déplacer ces informations dans un documents csv : ./code4final.sh "$1" > ../tableaux/tableau-fr.tsv
#exemple : ./code4final.sh ../urls/fr.txt > ../tableaux/tableau-fr.tsv

