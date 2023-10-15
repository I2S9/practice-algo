Algo copie_inser(L : Liste, x : élément, i : entier): Liste
    cmp : entier
    cmp <- 1
    L2 <- liste_vide()
    Si(i=1) alors
        ajouter(x,L)
    Sinon
        Tantque(cmp < i) faire
        L2 <- ajouter(premier(L),L2)
        L <- suite(L)
        cmp <- cmp +1
        Fintantque
        L <- ajouter(x,L)
        Tantque(non(est_vide(L2))) faire
            L <- ajouter(premier(L2), L)
            L2 <- suite(L2)
        fintantque
    Finsi
    renvoyer L
FinAlgo
