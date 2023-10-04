Algo fusionner(L1, L2 : Liste) : Liste
    L : Liste
    L <-- liste_vide()
    Tantque(non(est_vide(L1)) et non(est_vide(L2))) faire
        Si(premier(L1) > premier(L2)) alors
            L <-- ajouter(premier(L1),L)
            L1 <-- suite(L1)
        Sinon:
            L <-- ajouter(premier(L2),L)
            L2 <-- suite(L2)
        Finsi
    fintantque
    Si (non(est_vide(L2)))alors
        Tantque(non(est_vide(L2))) faire
            L <-- ajouter(premier(L2),L)
            L2 <-- suite(L2)
        fintantque
    Sinon si (non(est_vide(L1)))alors
        Tantque(non(est_vide(L1))) faire
            L <-- ajouter(premier(L1),L)
            L1 <-- suite(L1)
        fintantque
    Finsi
    renvoyer L
FinAlgo
