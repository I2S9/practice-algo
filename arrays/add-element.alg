Ecrire un algorithme qui supprime l'élément associé à l'indice i d'un tableau dont tous les éléments sont définis.
Cet algorithme attend en argument un tableau T, un entier i et un élément x; il ne doit pas créer de nouveau tableau.

Algo sup_elem_i(T : Tableau, i : entier, x : element): Tableau
    j,n : entier
    j <- indice_fin(T)
    Pour n allant de i à j-1 faire
        T <- modifier(T,i, recuperer(T, i+1))
    finpour
    T <- modifier(T,j,x)
    renvoyer T
Finalgo
