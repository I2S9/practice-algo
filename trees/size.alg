Algo taille(Abr : Arbre): entier
    Si(est_vide(Abr)) alors
        renvoyer 0
    Sinon
        renvoyer(1+taille(droit(Abr))+taille(gauche(Abr)))
    Finsi
FinAlgo
