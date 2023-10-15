
Algo produit_i(i : entier): entier
    Si (i<=1)
        renvoyer i
    Sinon
        renvoyer i * (i-1)
Finalgo

-- Q2

Algo produit_term(i : entier, acc : entier): entier
    acc <- 1
    Si (i<=1)
        renvoyer acc
    Sinon renvoyer produit_term(i-1; i*acc)
Finalgo

-- Q3

Algo produit_iter(i : entier): entier
    cmp : entier
    cmp <- 1
    Tantque(i != 1) faire
        cmp <- cmp * i
        i <- i-1
    Fintantque
    renvoyer cmp
Finalgo
