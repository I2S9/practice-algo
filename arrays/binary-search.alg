Algo dichotomie(T : Tableau, x : élément): entier 
    debut, fin, milieu : entier
    debut <- indice_debut(T)
    fin <- indice_fin(T)
    Tantque (debut <= fin) faire
        milieu <- ((debut+fin)/2)
        Si(T[milieu] = x) alors
            renvoyer milieu
        Sinon si(T[milieu]>x) alors
            fin <- milieu - 1
        Sinon
            debut = milieu + 1
        Finsi
    Fintantque
    renvoyer -1 -- Dans le cas où l'élément recherché n'est pas présent dans le tableau
FinAlgo

