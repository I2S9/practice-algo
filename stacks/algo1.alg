"""Write an algorithm that places the even integers of P1 in P2 and the other odd integers of P1 in P2. After running the algorithm, P1 is empty."

Algo Algo(P1, P2, P3)
  Tantque(non_est_vide(P1)) faire
    (x,P1) <-- depiler(P1)
    si(est_pair(x)) alors
      P2 <-- empiler(x,P2)
    sinon
      P3 <-- empiler(x,P2)
    finsi
FinAlgo

"""Write an algorithm that places P1 integers in P2 by placing imperfect integers above even integers."
"""After running the algorithm, P1 is empty and the integers of P2 are in reverse order of the initial order."

Algo vider_dans(P1,P2)
  Tantque(non_est_vide(P1)) faire
        (x,P1) <-- depiler(P1)
        P2 <-- empiler(x,P2)
  Fintantque
FinAlgo

"""Write an algorithm that changes the order of P1 integers to alternate between pairs and odd."
"""if the number of even and odd integers is not the same, the excess integers are placed at the top of the P1 stack."

Algo algo3(p1,P2,P3)
  Algo1(P1,P2,P3)
      Tantque(non_est_vide(P2) et non_est_vide(P3)) faire
          (x,P2) <-- depiler(P2)
          P1 <-- empiler(x,P1)
          (x,P3) <-- depiler(P3)
          P1 <-- empiler(x,P1)
          



















          
