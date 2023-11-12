Algo tri_selection(T : Tableau, n : entier) --n correspond à la taille du tableau
    n <- indice_fin(T)+indice_debut(T)+1
    Pour i allant de 0 à n-2 par pas de 1 faire
        min <- i
        Pour j allant de i+1 à n-1 par pas de 1 faire
            Si T[j] < T[min] alors
                min <- j
            Finsi
        Finpour
        Si min ≠ i alors
            echanger(T, i, min)
        Finsi
    Finpour
FinAlgo

Algo echanger(T : Tableau, i : entier, j : entier)
    aux <- T[i]
    T[i] <- T[j]
    T[j] <- aux
FinAlgo
