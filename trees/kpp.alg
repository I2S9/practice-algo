-- Créer un algorithme qui renvoie un tableau stockant les k plus petits éléments du tableau

Algo kpp(x : Arbre, T : Tableau, k : entier): Tableau x entier -- x est un arbre binaire de recherche
    renvoyer kpp_rec(gauche(x), T,k,i)
FinAlgo

Algo kpp_rec(x : Arbre, T : Tableau, k : entier, i : entier):Tableau x entier
    Si(est_vide(x) ou i=k) alors
        renvoyer (T,i)
    Sinon
        (T,i) <- kpp_rec(gauche(x), T,k,i)
        Si(i<k) alors
            T[i] <- racine(x)
            renvoyer kpp_rec(droit(x),T,k,i+1)
        Sinon
            renvoyer (T,i)
        Finsi
    Finsi
FinAlgo
