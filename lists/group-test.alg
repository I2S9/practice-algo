Algo longueur_liste(L : Liste): entier
    n : entier
    n <- 0
    Tant que(non(est_vide(L))) faire
        L <- suite(L)
        n <- n+1
    Fintantque
    renvoyer n
Finalgo


Algo recursif_lg(L : Liste) : entier
    Si(est_vide(L)) alors
        renvoyer 0;
    Sinon
        renvoyer(1 + recursif(suite(L)))
    Finsi
FinAlgo


Algo ieme_element(L : Liste, n : Entier) : Element
   Pour i allant de 1 à n-1 faire
   L <- suite(L)
   FinPour
   renvoyer premier(L)
FinAlgo

Algo ieme_recursif(L : Lite, n : entier) : element
    Si(i==1) alors
        renvoyer premier(L)
    sinon
        L <- suite(L)
        renvoyer ieme_recursif(L, i-1)
    Finsi
Finalgo

Algo copie_inversée(L : Liste) : Liste
    L2 : Liste
    Tantque (non(est_vide(L1))) faire
    L2 <- ajouter(premier(L1), L2)
    L1 <- suite(L1)
    Fintantque
    renvoyer L2
FinAlgo

ALgo copie_inv_rec(L : Liste) : Liste
    Si(copie_inversée(L)==L)
        renvoyer L
    Sinon
        renvoyer()

FinAlgo
