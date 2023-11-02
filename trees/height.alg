Algo hauteur_arbre(Abr : Arbre):entier
    Si(est_vide(Abr) ou taille(Abr)=1) alors
        renvoyer 0
    Sinon
        renvoyer(1 + max(hauteur_arbre(droit(Abr)),hauteur_arbre(gauche(Abr))))
    Finsi
Finalgo
