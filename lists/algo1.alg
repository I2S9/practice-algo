Algo longueur_liste(L : liste) : entier
    n : entier
    n <-- 0
    tantque non(est_vide(L)) faire
        L <-- suite(L)
        n <-- n + 1
    fintantque
    renvoyer n
finAlgo

Algo longueur_liste_rec(L : liste) : entier
    Si est_vide(L) alors
        renvoyer 0
    Sinon
        renvoyer 1 + longueur_liste_rec(suite(L))
    Finsi
Finalgo

Algo ieme_element(i : entier, L : liste) : élément
    n <-- entier
    pour n allant de 1 à i-1 faire
        L <-- suite(L)
    finpour
    renvoyer premier(L)
finAlgo

"""Si l'indice est supérieur à la longueur de la liste, la fonction retourne le dernier élément de la liste"

Algo ieme_element2(i : entier, L : liste) : élément
    n : entier
    n <-- 1
    e : élément
    Si non(est_vide(L)) et n <= i-1 alors
        e <-- premier(L)
        L <-- suite(L)
        n <-- n + 1
    finsi
    renvoyer e
finAlgo










