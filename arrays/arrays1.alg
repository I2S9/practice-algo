Algo max_elements(Tab : Tableau) : entier
    renvoyer (indice_fin(T)-indice_debut(T)+1)
Finalgo

Algo modifier_tab(x : entier, Tab : Tableau) : Tableau
    i <- entier 
    Pour i allant de indice_debut(Tab) à indice_fin(Tab) faire
       Tab <- modifier(Tab,i,x)
    Finpour
    renvoyer Tab
FinAlgo


Algo nb_elems_definis(T : Tableau) : entier
    nb, i: entier 
    nb <- 0
    Pour i allant de indice_debut(T) à indice_fin(T) faire
        Si(est_defini(T,i) alors
            nb <- nb + 1
        Finsi
    finpour
    renvoyer nb
FinAlgo

Algo tab_carre(Tab : Tableau) : Tableau
    i <- entier 
    Pour i allant de indice_debut(Tab) à indice_fin(Tab) faire
       Tab <- modifier(Tab,i,i*i)
    Finpour
    renvoyer Tab
FinAlgo


Algo nb_elems_definis(T : Tableau) : entier
    i: entier 
    Pour i allant de indice_debut(T) à indice_fin(T) faire
        Si(est_defini(T,i) alors
            T <- modifier(T,i,2* recuperer(T,i))
        Finsi
    finpour
    renvoyer T
FinAlgo

Algo init_non_definis(T : Tableau) : entier
    T2 <- creer_tableau(indice_debut(T),indice_fin(T))
    i, valeur: entier 
    valeur <- 0
    Pour i allant de indice_debut(T) à indice_fin(T) faire
        Si(non(est_defini(T,i)) alors
            T2 <- modifier(T2, i, valeur)
        Sinon
            valeur <- recuperer(T, i)
            T2 <- modifier(T2, i, recuperer(T,i))
        Finsi
    finpour
    renvoyer T2.
FinAlgo













