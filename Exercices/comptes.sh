#!/usr/bin/bash
chmod +x comptes.sh

cd ~/Exercice/Exercice1/ann/2016
echo "Nombre de lignes où le mot location apparait en 2016:"
grep location -i *.ann | wc -l

cd ~/Exercice/Exercice1/ann/2017
echo "Nombre de lignes où le mot location apparait en 2017:"
grep location -i *.ann | wc -l

