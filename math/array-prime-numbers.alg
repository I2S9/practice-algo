Algo est_premier(n : eniter): entier
  cmp : eniter
  cmp <- 0
  Pour i allant de [sqrt(n)] à 2 par pas de -1 faire
    Si(n mod i = 0) alors 
      cmp <- cmp + 1
    Finsi
  Finpour
  Si(cmp = 0 et n != 1) alors
    renvoyer 1 
  Sinon
    renvoyer 0 
  Finsi
Finalgo

Algo q1(T : Tableau): Tableau
  Pour i allant de indice_debut(T) à indice_fin(T) faire
    T[i] <- est_premier(i)
  Finpour
  renvoyer T
Finalgo
