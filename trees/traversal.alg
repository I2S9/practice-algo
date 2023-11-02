Algo parcours_prefixe(A : Arbre)
    Si(non(est_vide(A))) alors
        afficher(racine(A))
        parcours_prefixe(gauche(A))
        parcours_prefixe(droit(A))
    Finsi
FinAlgo

Algo parcours_infixe(A : Arbre)
    Si(non(est_vide(A))) alors
        parcours_prefixe(gauche(A))
        afficher(racine(A))
        parcours_prefixe(droit(A))
    Finsi
FinAlgo

Algo parcours_suffixe(A : Arbre)
    Si(non(est_vide(A))) alors
        parcours_prefixe(gauche(A))
        parcours_prefixe(droit(A))
        afficher(racine(A))
    Finsi
FinAlgo

-- 2

Algo afficher_largeur_sous_arbres(A: Arbre)
    Si(non(est_vide(A))) alors
        si(non(est_vide(gauche(A))) alors
            afficher(racine(gauche(A)))
        Finsi
        si(non(est_vide(droit(A))) alors
            afficher(racine(droit(A)))
        Finsi
        afficher_largeur_sous_arbres(gauche(A))
        afficher_largeur_sous_arbres(droit(A))
    Finsi
Finalgo

Algo afficher_largeur(A : Arbre)
    Si(non(est_vide(A))) alors
        afficher(racine(A))
        afficher_largeur_sous_arbres(A)
    Finsi
Finalgo



