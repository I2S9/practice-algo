-- Parcours en profondeur(préfixe, infixe, suffixe)

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

-- Parcours en largeur

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

-- Version corrigée (à l'aide d'une FILE)

Algo parcours_largeur(a : Arbre)
    F <- creer_file()
    F <- enfiler(x,F)
    Tantque(non(est_vide(f))) faire
        (x,F) <- defiler(F)
        Afficher racine(x)
        F <- enfiler(gauche(x),F)
        F <- enfiler(droit(x),F)
    Fintantque
Finalgo



