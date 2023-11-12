Algo ackerman_rec(n : entier, m : entier): entier
    Si(m=0) alors
        renvoyer n+1
    Sinon si(m>0 et n=0) alors
        renvoyer ackerman_rec(m-1, 1)
    Sinon
        renvoyer ackerman_rec(m-1, ackerman_rec(m,n-1))
    Finsi
FinAlgo

Algo ackerman_pile(m : entier, n : entier): entier
    P <- creer_pile(+infini)
    P <- empiler((m,n,0), P)
    Tantque(non(est_vide(P))) faire
        (m, n, k) <- sommet(P)
        P <- depiler(P)
        Si (m = 0) alors
            n <- n + 1
            Si(non(est_vide(P))) alors
                (m, n, k) <- sommet(P)
                P <- empiler((m, n, k), P)
            Finsi
        Sinon si(n = 0) alors
            m <- m - 1
            n <- 1
            P <- empiler((m, n, 0), P)
        Sinon si(k = 0) alors
            P <- empiler((m, n, 1), P)
            n <- n - 1
            P <- empiler((m, n, 0), P)
        Sinon
            m <- m - 1
            P <- empiler((m, n, 0), P)
        Finsi
    FinTantque
    retourner n
Finalgo
