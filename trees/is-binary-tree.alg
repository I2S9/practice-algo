Algo est_abr(x : Arbre, min : élément, max : élément): Booléen
    Si est_vide(x))alors
        renvoyer Vrai
    Finsi
    renvoyer (est_abr_g(gauch(x), racine(x)) et est_abr_d(droit(x), racine(x)))
Finalgo

Algo est_arb_g(x : Arbre, max : élément): Booléen
    Si(est_vide(x)) alors
        renvoyer Vrai
    finsi
    Si(racine(x)>max)alors
        renvoyer Faux
    Finsi
    renvoyer est_abr_g(gauche(x),racine(x)) et est_abr_gd(droite(x),racine(x),max)
Finalgo

Algo est_abr_d(x : Arbre, min : élément): Booléen
    Si(est_vide(x)) alors
        renvoyer Vrai
    Finsi
    Si(racine(x) <= min) alors
        renvoyer Faux
    Finsi
    renvoyer est_abr_d(droit(x), racine(x)) et est_abr_gd(gauche(x),min,racine(x))
FinAlgo


Algo est_abr_gd(x : Arbre, min : élément, max : élément): Booléen
    Si(est_vide(x)) alors
        renvoyer Vrai
    Finsi
    Si(racine(x) <= min ou max < racine(x)) alors
        renvoyer Faux
    Finsi
    renvoyer est_abr_gd(droit(x), racine(x),max) et est_abr_gd(gauche(x),min,racine(x))
FinAlgo
