Algo modifier_tab(x : entier, Tab : Tableau) : Tableau
  i ← entier
  Pour i allant de indice_debut(Tab) à indice_fin(Tab) faire
    Tab ← modifier(Tab, i, x)
  FinPour
  renvoyer Tab
FinAlgo
