Algo base_b(n : entier, b : base)
    Si(n<b) alors
        afficher(n)
    Sinon
        base_b([n/2], b) -- Ici [] représente l'arrondi inférieur
        afficher (n[b])
    Finsi
Finalgo


Algo iter_base_b(n : entier, b : entier)
    acc <- creer_pile(+infini)
    Tantque (n>=b) faire
        acc <- empiler(n[b], acc)
        n <- n[b] -- Ici [] correspond à l'arrondi inférieur
    Fintantque
    Tantque non(est_vide(acc)) faire
        (x,acc) <- depiler(acc)
        afficher(x)
    Fintantque
    afficher(n)
Finalgo
