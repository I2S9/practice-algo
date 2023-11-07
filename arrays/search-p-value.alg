
Algo ordonner(T : Tableau, p : entier): Tableau
    T2 <- creer_tableau(indice_debut(T), indice_fin(T))
    j <- indice_debut(T)
    Pour i allant de indice_debut(T) + p à indice_fin(T) par pas de 1 faire 
        T2[j] <- T[i]
        j <- j+1
    Finpour 
    renvoyer T2
FinAlgo

Algo chercher(T : Tableau): entier
    d <- indice_debut(T)
    f <- indice_fin(T)
    Tantque d<f faire 
        m <- [d+f/2] -- arrondi par défaut
        Si T[m] < T[f] alors
            f <- m
        Sinon
            d <- m + 1
        Finsi
    Fintantque
    renvoyer d
FinAlgo
