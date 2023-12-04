Algo appartient(e : élément, a : Arbre): Booléen
    Si(est_vide(a)) alors
        renvoyer Faux
    Sinon
        Si (e = racine) alors
            renvoyer Vrai
        Sinon 
            renvoyer (appartient(e, gauche(a)) ou appartient(e, droit(a)))
        Finsi
    Finsi
Finalgo
