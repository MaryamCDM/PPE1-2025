# Journal de bord du projet encadré
## Travail du 05/10/2025
Aujourd'hui, nous avons continué avec une camarade, le travail fait en classe sur github. Cela consistait à créer un nouveau fichier dans lequel nous pourrons dans le futur écrire le travail fait, les difficultés rencontrées ainsi que les manières de les résoudre. Nous avons utilisé les commandes suivantes :
- git status, qui sert à vérifier/tracker les modifications du fichier
- git log, qui sert à vérifier les derniers commits
Nous avons rencontrés un problème sur le terminal. En effet, lorsque nous utilisions la commande "git log", nous avons remarqué quelque chose d'étonnant : l'auteur du dossier était sous le nom de l'enseignant "YoannDupont". Nous savons que nous avons clônés le dépot du prof et avons pensé à garder cette configuration ou alors à créer notre propre dépot. Cependant, nous nous sommes tout de même posé la question suivante : "Est-ce que le fait que le dossier est sous son nom, nous empêche de voir notre propre dépot sur le terminal ?".
Nous avons émis comme hypothèse que nous devions clôner notre propre github mais avons préférer ne pas le faire et attendre la séance prochaine.
En ce qui concerne le tag, nous avons peur qu'il ne prenne pas nos modifications en compte mais nous allons tout de même et essayer et nous verrons cela mercredi :)

## gros blanc ici à remplir concernant le travail de ces dernières séances

## Travail du 14 au 17/11/2025
Chers professeurs, aujourd'hui j'ai finalisé mon miniprojet final. Après avoir git push mes tentatives, j'ai décidé de vérifier si le lien était fonctionnel, malheureusment ce n'était pas le cas. Je n'ai pas vraiment compris pourquoi. J'ai donc essayé à maintes reprises de relier mon travail final nommé "index-final" puis "index-final-vraiment" au lien auquel il était censé correspondre. Voyant que cela ne fonctionne pas, j'ai décidé de supprimer le lien et d'en faire un nouveau. Mais je pense avoir fait une bêtise car je n'arrive tout simplement plus à créer de site désormais :\
Je pense tout de même vous décrire le travail que j'ai fait ces derniers jours ainsi que toutes les difficultés et résolutions qui ont suivies. Je tiens d'abord à vous prévenir que ce travail a été fait avec le plus de sérieux possible et que de vrais efforts ont été faits.
J'ai commencé ce travail seule chez moi puis le lendemain, moi ainsi que d'autres camarades de classe nous sommes rejoints afin de travailler sur le miniprojet (un samedi à la bibliothèque finalement). Ce jour-là, nous avons surtout créer le le site à partir du fichier index.html, ça a été plutôt rapide à faire. Ce qui nous a plutôt ralenti a été la partie où l'on devait créer un lien entre la page html de nos tableaux et "index.html". Le problème principal concernait surtout les chemins. Après avoir compris cela, le travail fut terminé (on ne dirait pas comme ça mais nous sommes rentrés plutôt tard chez nous).
Personnellement, ce qui m'a posé le plus de difficultés a été de rajouter un esthétisme. Il a fallu apprendre à utiliser bulma-css à partir des scripts que vous nous avez donné dans les exempliers. J'ai aussi pù apprendre de nouvelles fonctions comme :
-has-text-weight-bold qui permet de rendre un texte gras
-has-text-centered qui permet de centré un texte
## 18/11/2025
Aujourd'hui j'ai essayé de corriger le problème concernant le mauvais affichage de mon lien (https://maryamcdm.github.io/PPE1-2025/). Selon mes recherches, il fallait que je nomme mon dossier principal index.html car lorsque j'ai créer mon fichier, le site a été attaché avec ce document. Lorsque j'ai changé "index-final-vraiment.html" en "index.html", le site a fait fonctionné mon lien (Bonne nouvelle !)
Avant demain, je pense essayer d'améliorer le site et d'organiser mes dossiers (ce qui forcément me fera changer les chemins de certains de mes codes).
### 23:17
je me suis rendu compte que tout n'a pas été mis en place au niveau du rangement dépôt distant et dépôt local car je n'avais pas commit certains fichiers (ce qui rendait le déplacement de certains fichiers impossible en dépôt local github) mais une fois les fichiers ajoutés (à l'aide de git add), les déplacements se sont faits plutôt simplement.
PS : j'ai bien arranger mon dépôt mais je n'ai pas modifié grand chose quant au code de mon site mis à part le chemin de l'image.

## 19/11/2025

Aujourd'hui, on travaille sur les expressions régulières
commandes vus :
\p{l}*
\p{han} -> reconnait les caractères chinois
+ = quantifieur qui porte sur le caractère précédent donc \p{l}+ (tous les textes avec les accents)
+ cat mail-liste-hn.txt | grep -P '\p{l}+' -o
vu git-more et la commande git reset qui permet de revoir une ancienne version d'un commit (il ne supprime cependant aucun changement à moins qu'on ne lui demande) git reset fonctionne sur des commits entiers, pas sur des fichiers spécifiques.
on ne va pas voir les fonctions soft et hard
git checkout -> montre touts les fichiers modifiés
git checkout mon_programme -> revient sur le mon_programme du dépôt et annule donc toutes les modifications faites actuellement
différence avec git... est que l'on peut conserver les modifications

git checkout mon_programme -> revient sur le mon_programme du dépôt et annule donc toutes les modifications faites actuellement
différence avec git... est que l'on peut conserver les modifications

## Le 26 Novembre 2025

Ce jour-là,nous avons découvert uv, c'est un gestionnaire d'environnement Python très rapide qui a été développé par Astral. C'est une alternative à pip et virtualenv, c'est un peu comme pipx mais en plus performant. L'idée est de créer un environnement Python général que je pourrai utiliser au quotidien.
Après avoir installer uv, j'ai appris à activer cet environnement avec la commande suivante :
source $HOME/venvs/plurital/
Une fois activé, on a pu voir que le python utilisé passe d'un système python à celui d'un environnement virtuel. Ce qui permet de garder le système propre et isolé, tout en pouvant installer les bibliothèques nécessaires pour nos projets.
La commande que je vais utiliser le plus avec uv est celle-ci (d'après vous, les profs):
uv install
Elle sert à installer des programmes et leurs commandes associées. Lors d'un test uv fait en classe, uv a installé 12 programmes utiles. Les paquets python s'installent depuis PyPI(pypi.org). J'ai aussi consulté le dépôt GitHub de wordcloud, puisqu'on peut l'installer localement. J'ai dû réinstaller jupyter-lab (mauvaise installation lors de l'install party), avec :
uv pip install jupyterlab

### Wordcloud
Voici la commande utilisée pour générer un nuage de mots :
wordcloud_cli --text pg77333.txt --imagefile pg77333.png
J'ai rencontré plusieurs problèmes cependant :
1. j'avais oublié de préciser le format .png avec --imagefile (j'avais mis .txt qui est la mauvaise extention)
2. Mon dossier ne contenait pas de mots, d'où l'erreur. Une fois corrigé, la génération a fonctionné.
3. Autre problème qui ne concerne pas vraiment ce cours précisèment, c'est le fait que je ne parviens pas à joindre des images à mon journal de bord
4. Je n'avais aussi pas compris la commande stopwrd mais après avoir demandé, vous m'avez dit qu'elle permet de retirer certains mots du nuage.
Par ailleurs, après cela, nous avons parlé du mask, pour donner une forme à notre nuage de mots, je n'ai malheureusement pas réussi à le faire.
Enfin, nous avons commencé un nouveau type de travail : la tokenisation

### Pour le projet
- tableau
- nuage de mots
- probabilités
-> ce sera la base de notre travail

## 03/12/2025
Début du projet et présentation
choix du mot + une hypothèse probable (éviter les réseaux sociaux, on choisit la langue qu'on veut)
on étudie les usages d'un mot
récupérer les pages html et les mettre sur une machine git
