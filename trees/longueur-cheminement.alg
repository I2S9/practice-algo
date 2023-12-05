-- Ecrire un algorithme qui calcule la longueur de cheminement d'un arbre binaire non vide  

Algo longueur_cheminement(a : Arbre): entier
    Si(non(est_vide(a))) alors 
        Si(est_vide(gauche(a)) et est_vide(droit(a))) alors 
            renvoyer 0
        Sinon Si est_vide(gauche(a)) alors 
            renvoyer longueur_cheminement(droit(a)) + taille(droit(a))
        Sinon Si est_vide(droit(a)) alors
            renvoyer longueur_cheminement(gauche(a)) + taille(gauche(a))
        Sinon renvoyer longueur_cheminement(droit(a)) + taille(droit(a))longueur_cheminement(gauche(a)) + taille(gauche(a))
        Finsi
    Finsi
Finalgo
