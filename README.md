# Asservissement_Numérique_ARSINE_correcteur RST par emplacement de pole
## 📌 Description du projet
Ce projet porte sur la conception et la simulation d’un système d’asservissement numérique utilisant un correcteur **RST avec intégrateur**, basé sur la méthode de **placement de pôles**.

L’objectif principal est d’assurer une **bonne poursuite de consigne**, une **stabilité du système** et une **élimination de l’erreur statique**, tout en garantissant un bon **rejet des perturbations**.

---

## 🎯 Objectifs
- Modéliser un système dynamique (ordre 1)
- Discrétiser le système (ZOH)
- Concevoir un correcteur RST
- Ajouter un intégrateur pour supprimer l’erreur statique
- Vérifier les performances du système (stabilité, précision)
- Simuler le comportement sous MATLAB/Simulink

---

## ⚙️ Méthodologie

1. **Modélisation du système**
   - Système continu du premier ordre
   - Paramètres physiques définis

2. **Discrétisation**
   - Méthode : Zero Order Hold (ZOH)

3. **Synthèse du correcteur RST**
   - Résolution de l’équation de Bézout :
     ```
     A(z)S(z) + z⁻ᵈ B(z)R(z) = Aₘ(z)
     ```
   - Placement des pôles souhaités

4. **Ajout de l’intégrateur**
   - Introduction du facteur :
     ```
     (1 - z⁻¹)
     ```
   - Permet d’annuler l’erreur statique

5. **Simulation**
   - Suivi de consigne
   - Rejet de perturbation
   - Analyse des performances

---

## 🛠️ Outils utilisés
- MATLAB
- Simulink
- (Optionnel) Arduino pour implémentation réelle

---

## ▶️ Instructions d'exécution

1. Ouvrir MATLAB
2. Charger le fichier du projet (.m ou .slx)
3. Lancer la simulation
4. Observer :
   - La réponse du système
   - L’erreur
   - Le comportement face aux perturbations

---

## 📊 Résultats attendus
- Erreur statique nulle
- Réponse stable
- Bonne rapidité
- Rejet efficace des perturbations

---

## 📁 Contenu du dépôt
- Code MATLAB
- Fichiers Simulink (.slx)
- Rapport du projet (PDF)
- Figures / graphiques (si disponibles)

---

## 👤 Auteur
Nom : [ARSINE]  
Prénom : [ARSINE]  
Formation : Master Génie Mécanique – Mécatronique  

---

## 📬 Remarque
Ce projet s’inscrit dans le cadre d’un cours d’asservissement numérique et peut être amélioré en intégrant :
- des systèmes d’ordre supérieur
- des tests expérimentaux (Arduino)
- une optimisation des performances

---.
