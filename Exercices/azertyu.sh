#!/usr/bin/bash
echo "2016 : $(grep -h "Location" "../Exercice1/ann/2016"/*.ann | wc -l)"
echo "2017 : $(grep -h "Location" "../Exercice1/ann/2017"/*.ann | wc -l)"
echo "2018 : $(grep -h "Location" "../Exercice1/ann/2018"/*.ann | wc -l)"
chmod +x
