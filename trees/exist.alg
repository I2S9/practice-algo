Algo existe(e : élément, x : Arbre): Boolean
    Tantque non(est_vide(x)) faire
        Si(e!=racine(x)) alors
            x <- gauche(x)
        Sinon
            x <- droite(x)
        Finsi
    Fintantque
    renvoyer(non(est_vide(x)))
Finalgo
