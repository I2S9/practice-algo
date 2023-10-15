
Algo copie_sup(L : Liste, i : entier): Liste
    L2 <- liste_vide()
    cmp : entier
    cmp <- 1
    Tantque(non(est_vide(L))) faire
        Si(cmp != i)
            L2 <- ajouter(premier(L), L2)
        Finsi
        cmp <- cmp + 1
        L <- suite(L)
    Fintantque
    renvoyer(copie_inv(L2))
Finalgo


Algo copie_sup_element(L : Liste, n : entier) : Liste
    L2 : Liste
    L2 <-- liste_vide()
    i <-- entier
    i <-- 1
    tantque(non(est_vide(L1)) faire
        Si(i == n) alors
            L <-- suite(L)
        Sinon:
        L2 <-- ajouter(premier(L),L2)
        L <-- suite(L)
        Finsi
    fintantque
    renvoyer L2
FinAlgo
