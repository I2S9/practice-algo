-- Tri fusion à l'aide d'un tableau auxiliaire

Algo tri_fusion(T : Tableau, T' : Tableau, g : entier, d : entier)
    Si(g<d) alors
        m <- [(g+d)/2] -- Arrondi par défaut
        tri_fusion(T,T',g,m)
        tri_fusion(T,T',g,m+1,d)
        fusionner(T,T',g,m,d)
    Finsi
Finalgo

Algo fusionner(T : Tableau, T' : Tableau, g : entier, m : entier, d : entier)
    Pour i allant de g à m par pas de 1 faire
        T'[i] <- T[i]
    Finpour
    Pour j allant de (m+1) à d faire
        T'[j] <- T[d+m+1-j]
    Finpour
    (i,j) <- (g,d)
    Pour k allant de g à d par pas de 1 faire
        Si(T'[i]<T'[j]) alors
            T[k] <- T'[i]
        Sinon
            T[k] <- T'[j]
            j <- j-1
        finsi
    Finpour
Finalgo


-- Tri fusion sans tableau auxiliaire

Algo tri_fusion_bis(T : Tableau, g : entier, d : entier)
    Si(g<d) alors
        m <- [(g+d)/2]
        tri_fusion_bis(T,g,m)
        tri_fusion_bis(T,m+1,d)
        fusionner(T,g,m,d)
    Finsi
Finalgo

Algo fusionner(T : Tableau, g : entier, m : entier, d : entier)
    Tantque (i<d et j<=d) faire
        Si (T[i] > T[j]) alors
            x <- T[j]
            Pour k allant de j à (i+1) par pas de -1
                T[k] <- T[k+1]
            Finpour 
            T[i] <- x
            j <- j+1
        Finsi
        i <- i+1
    fintantque
FinAlgo

-- Tri fusion avec la taille du tableau

Algo tri_fusion(T : Tableau, n : entier)
    tri_fusion_bis(T, 0, n-1)
FinAlgo

Algo tri_fusion_bis(T : Tableau, g : entier, d : entier)
    Si (g < d) alors
        m <- (g + d) / 2
        tri_fusion_bis(T, g, m)
        tri_fusion_bis(T, m+1, d)
        fusionner(T, g, m, d)
    Finsi
FinAlgo

Algo fusionner(T : Tableau, g : entier, m : entier, d : entier)
    Créer un tableau temporaire aux de taille d-g+1
    i <- g, j <- m+1, k <- 0

    Tantque (i <= m et j <= d) faire
        Si (T[i] <= T[j]) alors
            aux[k] <- T[i]
            i <- i + 1
        Sinon
            aux[k] <- T[j]
            j <- j + 1
        Finsi
        k <- k + 1
    Fintantque

    Tantque (i <= m) faire
        aux[k] <- T[i]
        i <- i + 1
        k <- k + 1
    Fintantque

    Tantque (j <= d) faire
        aux[k] <- T[j]
        j <- j + 1
        k <- k + 1
    Fintantque

    Pour i allant de 0 à k-1
        T[g + i] <- aux[i]
    Finpour
FinAlgo








