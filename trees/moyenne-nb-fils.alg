-- Ecrire une fonction qui renvoie la moyenne du nombre de fils par sommet.
-- La fonction renvoie zéro pour un arbre vide

Algo nb_fils(a : Arbre) : entier 
    Si(est_vide(a) alors 
        renvoyer 0 
    Sinon si(est_vide(gauche(a)) et est_vide(droit(a))) alors 
        renvoyer 0 
    Sinon si(est_vide(gauche(a))) alors 
        renvoyer 1 + nb_fils(droit(a))
    Sinon si(est_vide(droit(a))alors
        renvoyer 1 + nb_fils(gauche(a))
    Sinon 
        renvoyer 2 + nb_fils(gauche(a)) + nb_fils(droit(a))
    Finsi
FinAlgo

Algo nb_moyen_fils(a : Arbre): entier
    Si(est_vide(a)) alors
        renvoyer 0 
    Sinon 
        renvoyer nb_fils(a)/taille(a)
Finalgo 
