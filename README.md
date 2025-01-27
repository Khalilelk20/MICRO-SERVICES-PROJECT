# 🌟 Projet Kubernetes sur Google Cloud Platform (GCP) 

## 📝 Description

Ce projet vise à **provisionner et déployer une architecture Kubernetes scalable** sur Google Cloud Platform (GCP), en mettant en œuvre des pratiques avancées d'Infrastructure as Code (IaC).  

🔹 **Technologies utilisées :**
- **Terraform** pour le provisionnement des ressources cloud.
- **Google Kubernetes Engine (GKE)** pour gérer les clusters Kubernetes.
- **Google Filestore** et **Google Compute Disk** pour un stockage fiable et persistant.
- **Ingress Controller** et **Load Balancer** pour une architecture performante et hautement disponible.

L'architecture déployée est **fiable**, **performante** et **hautement disponible**, répondant aux exigences modernes de scalabilité et de résilience.

---

## 🔧 Détails techniques

| Composant                       | Description                                                                                            |
|---------------------------------|--------------------------------------------------------------------------------------------------------|
| **🌍 Cluster Kubernetes**        | Provisionné avec Terraform, composé de 3 nœuds sur GKE.                                                |
| **📦 Microservices**             | 8 microservices, chacun avec **2 répliques**, pour assurer la haute disponibilité.                     |
| **🌐 Ingress Controller**        | Permet de centraliser le routage du trafic entre les microservices via une seule IP publique.          |
| **⚙️ Load Balancer**             | Expose l'architecture et équilibre le trafic pour garantir les performances.                          |
| **📂 Google Filestore**          | Utilisé pour stocker les **variables de session** des utilisateurs, accessibles par plusieurs pods.   |
| **🗃️ Google Compute Disk**       | Persistance des données pour le service MySQL.                                                         |

---

## 🚀 Fonctionnalités

- **Provisionnement d'infrastructure avec Terraform :**  
  Création et gestion automatisées des ressources sur GCP.

- **Déploiement de microservices avec Kubernetes :**  
  Gestion du cycle de vie des services, avec scalabilité et haute disponibilité.

- **Stockage partagé :**  
  - **Google Filestore** pour partager les variables de session entre plusieurs pods.
  - **Google Compute Disk** pour persister les données critiques de MySQL.

- **Architecture performante et sécurisée :**  
  Trafic HTTP centralisé via **Ingress Controller** et **Load Balancer**.

---

## 🚀 Fonctionnalités du site SmartSpend

Le site web **SmartSpend**, déployé dans cette architecture, est une application de gestion financière. Ses principales fonctionnalités sont :  
- **Inscription et connexion des utilisateurs** : Authentification sécurisée pour accéder à l'application.  
- **Gestion des transactions** :  
  - **Insertion**, **modification**, et **suppression** des transactions financières.  
- **Définition d'un objectif financier** : Les utilisateurs peuvent définir un montant limite à ne pas dépasser.  
- **Alertes et visualisation des dépenses** :  
  - Affichage de graphiques interactifs (courbes et graphiques) pour analyser les dépenses.  
  - Notifications en cas de dépassement de l'objectif financier défini.  

### Langages utilisés pour SmartSpend :  
- **Frontend** : HTML, CSS, JavaScript  
- **Backend** : PHP  
- **Base de données** : SQL  

---

## 🏗️ Architecture

![Untitled diagram-2025-01-26-220957](https://github.com/user-attachments/assets/d5f18a65-e73c-43ca-afdb-28aa98674812)


