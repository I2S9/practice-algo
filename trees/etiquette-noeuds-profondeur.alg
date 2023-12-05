Algorithme etiquettes_noeuds_profondeur_paire(arbre):
    Si est_vide(arbre) alors
        renvoyer liste_vide()
    FinSi

    File_Noeuds <- liste_vide() // Crée une file vide pour les noeuds
    File_Profondeurs <- liste_vide() // Crée une file vide pour les profondeurs
    Liste_Etiquettes <- liste_vide() // Crée une liste vide pour les étiquettes
    ajouter(File_Noeuds, racine(arbre)) // Ajoute la racine de l'arbre à la file des noeuds
    ajouter(File_Profondeurs, 0) // La racine est à la profondeur 0

    TantQue non est_vide(File_Noeuds) faire
        Noeud_Actuel <- premier(File_Noeuds)
        File_Noeuds <- suite(File_Noeuds)
        Profondeur_Actuelle <- premier(File_Profondeurs)
        File_Profondeurs <- suite(File_Profondeurs)

        Si Profondeur_Actuelle mod 2 = 0 alors
            Liste_Etiquettes <- ajouter(Liste_Etiquettes, valeur(Noeud_Actuel))
        FinSi

        Si non est_vide(gauche(Noeud_Actuel)) alors
            File_Noeuds <- ajouter(File_Noeuds, gauche(Noeud_Actuel))
            File_Profondeurs <- ajouter(File_Profondeurs, Profondeur_Actuelle + 1)
        FinSi

        Si non est_vide(droit(Noeud_Actuel)) alors
            File_Noeuds <- ajouter(File_Noeuds, droit(Noeud_Actuel))
            File_Profondeurs <- ajouter(File_Profondeurs, Profondeur_Actuelle + 1)
        FinSi
    FinTantQue

    renvoyer Liste_Etiquettes
FinAlgorithme
