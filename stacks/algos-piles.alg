Algo pair_impair(P1 : Pile, P2 : Pile, P3 : Pile)
    x : entier
    tantque(non(est_vide(P1))) faire
        Si(est_pair(sommet(P1))) alors
            P2 <- empiler(sommet(P1),P2)
        Sinon
             P3 <- empiler(sommet(P1),P3)
        Finsi
        (x,P1) <- depiler(P1)
    Fintantque
FinAlgo

-- P1 = 1 2 3 4 5 P2 = vide P3 = vide
-- pairs dans P2, impairs dans P3
-- P1 = vide, P2 = 4  2, P3 = 5 3 1
-- depiler P3 dans P1
-- P1 = 1 3 5, P2 = 4 2, P3 = vide
-- depiler P1 dans P2
-- P1 = P3 = vide, P2 = 5 3 1 4 2

Algo pair_impair_bis(P1 : Pile, P2 : Pile, n : entier)
    x : entier
    P3 <- creer_pile(n)
    pair_impair(P1, P2, P3)
    Tantque(non(est_vide(P3)) faire
        P1 <- empiler(sommet(P3),P1)
        (x,P3) <- depiler(P3)
    Fintantque
    Tantque(non(est_vide(P1)) faire
        P2 <- empiler(sommet(P1),P2)
        (x,P1) <- depiler(P1)
    Fintantque    
FinAlgo


-- P1 = 4 7 1 5 6  --> P1 = 7 1 4 5 6 
-- utiliser la fonction pair impairs
-- P1 vide, P2 = 6 4, P3 = 5 1 7 
-- P1 = sommet P2, puis sommet P1 tant qu'il y a des sommets

Algo algo3(P1 : Pile, n : entier) 
    x : entier
    P2 <- creer_pile(n)
    P3 <- creer_pile(n)
    pair_impair(P1,P2,P3)
    Tantque(non(est_vide(P2)) et non(est_vide(P3))) faire
        P1 <- empiler(sommet(P2),P1)
        (x,P2) <- depiler(P2)
        P1 <- empiler(sommet(P3),P1)
        (x,P3) <- depiler(P3)
    Fintantque
    Tantque(non(est_vide(P3)) faire
        P1 <- empiler(sommet(P3),P1)
        (x,P3) <- depiler(P3)
    Fintantque
    Tantque(non(est_vide(P2)) faire
        P1 <- empiler(sommet(P2),P1)
        (x,P2) <- depiler(P2)
    Fintantque
Finalgo







