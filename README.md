# 🌟 Projet Kubernetes sur Google Cloud Platform (GCP) 

## 📝 Description

Ce projet vise à **provisionner et déployer une architecture Kubernetes scalable** sur Google Cloud Platform (GCP), en mettant en œuvre des pratiques avancées d'Infrastructure as Code (IaC).  

🔹 **Technologies utilisées :**
- **Terraform** pour le provisionnement des ressources cloud.
- **Google Kubernetes Engine (GKE)** pour gérer les clusters Kubernetes.
- **Redis** pour un stockage rapide et performant des variables de session.
- **Google Compute Disk** pour un stockage persistant des données.
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
| **🔄 Redis**                     | Utilisé pour stocker les **variables de session** des utilisateurs, accessible par plusieurs pods.    |
| **🗃️ Google Compute Disk**       | Persistance des données pour le service MySQL.                                                         |

---

## 🚀 Fonctionnalités

- **Provisionnement d'infrastructure avec Terraform :**  
  Création et gestion automatisées des ressources sur GCP.

- **Déploiement de microservices avec Kubernetes :**  
  Gestion du cycle de vie des services, avec scalabilité et haute disponibilité.

- **Stockage rapide avec Redis :**  
  Utilisation de Redis pour partager les variables de session entre plusieurs pods, avec une haute performance.

- **Persistance des données :**  
  Utilisation de **Google Compute Disk** pour persister les données critiques de MySQL.

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

![Untitled diagram-2025-02-22-152030](https://github.com/user-attachments/assets/77c9cbe9-1b07-46a7-81f1-6d44d26161af)

--- 
