Algo arbre_miroir(a : Arbre)
    Si (est_vide(a) ou taille(a) = 1) alors
        renvoyer a 
    Sinon 
        renvoyer cons(racine(a),arbre_miroir(droit(a)), arbre_miroir(gauche(a)))
    Finsi
FinAlgo
