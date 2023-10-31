Algo binaire_inv(n ∈ N)
  afficher n mod 2
  si n > 1 alors
    si n mod 2 = 0 alors
      binaire (n/2)
    sinon
      binaire ((n − 1) /2)
  finsi
 finsi
finalgo
