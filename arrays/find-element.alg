Algo chercher(x : entier , T : Tableau, g : entier, d : entier)
    Si g > d alors 
        renvoyer g 
    Sinon 
        m <- [(g+d)/2] -- arrondi inférieur pour les crochets
        Si x < T[m] alors 
            renvoyer chercher(x,T,g,m-1)
        Sinon 
            renvoyer chercher(x,T,m+1,d)
        Finsi
    Finsi
Finalgo
