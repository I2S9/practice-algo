-- Tri rapide

Algo tri_rapide(T : Tableau, g : entier, d : entier)
    Si(g<=d) alors
        p <- partionner(T,g,d)
        tri_rapide(T,g,p-1)
        tri_rapide(T,p+1,d)
    Finsi
FinAlgo

Algo partionner(T : tableau, g : entier, d : entier): entier
    pivot <- T[d]
    i <- prochain_sup_egal(T,g-1,pivot)
    j <- d- 1
    Tantque(T[j] > pivot et i <= j) faire
        j <- j - 1
    Fintantque
    Tantque(i<j) faire
        echanger(T,i,j)
        i <- prochain_sup_egal(T,i,pivot)
        j <- precedent_inf_egal(T,j,pivot)
    Fintantque
    echanger(T,i,d)
    renvoyer i
FinAlgo

Algo prochain_sup_egal(T : Tableau, i : entier, pivot : élément): entier
    i <- i +1 
    Tantque(T[i]<pivot) faire
        i <- i + 1
    Fintantque 
    renvoyer i 
FinAlgo

Algo precedent_inf_egal(T : Tableau, j : entier, pivot : élément): entier
    i <- i +1 
    Tantque(T[j]>pivot) faire
        j <- j - 1
    Fintantque 
    renvoyer j 
FinAlgo
