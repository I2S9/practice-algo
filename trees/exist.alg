Algo existe(e : élément, x : Arbre): Boolean
    Tantque non(est_vide(x)) faire
        Si(e!=racine(x)) alors
            x <- gauche(x)
        Sinon
            x <- droite(x)
        Finsi
    Fintantque
    renvoyer(non(est_vide(x)))
Finalgo

-- Version corrigée en classe 

1.Version récursive terminale

Algo existe(e : element, x : Arbre): Booléen
    Si(non(est_vide(x))) alors
        Si(e = racine(x)) alors
            renvoyer Vrai
        Sinon
            Si(e<racine(x)) alors
                renvoyer existe(e,gauche(x))
            Sinon
                renvoyer existe(e,droit(x))
            Finsi
        Finsi
    Sinon
       renvoyer Faux
    Finsi
FinAlgo

-- Version itérative 

Algo existe_iter(e : élement, x : Arbre): Booléen
    Tantque(non(est_vide(x)) et (e != racine(x))) faire
        Si(e<racine(x)) alors
            x <- gauche
        Sinon
            x <- droite
        Finsi
    Fintantque
    renvoyer(non(est_vide(x)))
Finalgo
