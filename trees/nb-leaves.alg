Algo nb_feuilles(Abr : Arbre): entier
    Si(est_vide(droit(Abr)) et est_vide(gauche(Abr))) alors
        renvoyer 1
    Sinon
        renvoyer(nb_feuilles(droit(Abr))+nb_feuilles(gauche(Abr)))
    Finsi
FinAlgo

-- Version corrigée 

Algo nb_feuilles_classe(Abr : Arbre): entier
    Si(est_vide(Abr) alors
        renvoyer 0
    Sinon
        Si(est_vide(droit(Abr)) et est_vide(gauche(Abr)))alors
            renvoyer 1
        Sinon 
            renvoyer nb_feuilles(droit(Abr))+nb_feuilles(gauche(Abr)))
        Finsi
    Finsi
FinAlgo
