-- Ecrire un algorithme qui associe la valeur 1 à tous les éléments d'un tableau dont l'indice est un nombre premier et 0 à tous les autres éléments;
-- Cet algorithme renvoie un tableau dont les indices vont de 1 à la valeur qui lui est fournie en paramètres
Algo est_premier(x : entier): entier
    n,cmp : entier
    cmp <- 0
    Pour n allant de x à 1 faire
        Si(x % n = 0) alors
            cmp <- cmp + 1
        Finsi
    finpour
    Si(cmp = 2) alors
        renvoyer 1
    sinon
        renvoyer 0
    Finsi
FinAlgo


Algo algo1(x : entier): Tableau
    T <- creer_tableau(1, x)
    i,j : entier
    Pour i allant de 1 à x faire
        T <- modifier(T,i,(est_premier(i)))
    finpour
    renvoyer T
FinAlgo
