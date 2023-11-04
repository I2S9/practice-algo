Algo tri_insertion(T : Tableau, g : entier, d : entier)
    i <- g + 1
    Tantque (i <=d) faire 
        j <- i
        Tantque (j<g et T[j-i]>T[j]) faire
            echanger(T, j, j-1)
            j <- j-1
        fintantque
        i <- i+1
    fintantque
FinAlgo

Algo echanger(T : Tableau, i : entier, j : entier)
    aux <- T[i]
    T[i] <- T[j]
    T[j] <- aux
Finalgo
