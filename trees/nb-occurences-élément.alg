Algo nb_occurences(e : élément, a : Arbre): entier
    Si(est_vide(a))alors
        renvoyer 0
    Sinon
        si e = racine alors
            renvoyer 1 + nb_occurences(gauche(a)) + nb_occurences(droit(a))
        sinon   
            renvoyer nb_occurences(gauche(a)) + nb_occurences(droit(a))
        Finsi
    Finsi
FinAlgo
