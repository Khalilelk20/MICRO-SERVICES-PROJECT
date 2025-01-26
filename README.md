Projet Kubernetes sur Google Cloud Platform (GCP)

Description

Ce projet vise à provisionner et déployer une architecture Kubernetes scalable sur Google Cloud Platform (GCP) en utilisant des pratiques d'Infrastructure as Code (IaC). Il utilise Terraform pour le provisionnement des ressources, Google Kubernetes Engine (GKE) pour gérer les clusters Kubernetes, et Google Filestore et Google Compute Disk pour le stockage des données et des variables de session des utilisateurs.Les microservices sont déployés sur un cluster Kubernetes avec des répliques et sont exposés via un Ingress Controller et un Load Balancer, offrant ainsi une architecture fiable, performante et hautement disponible.


🔧 Détails techniques :

🔧 Terraform pour provisionner un cluster Kubernetes avec 3 nœuds.

📦 8 microservices, chacun avec 2 répliques, pour assurer la haute disponibilité.

🌐 Ingress Controller pour centraliser le routage du trafic entre les microservices.

⚙️ Load Balancer pour exposer l'architecture sur une seule IP publique.

📂 Google Filestore utilisé pour stocker les variables de session des utilisateurs.

🗃️ Google Compute Disk pour persister les données du service MySQL.

Fonctionnalités

Provisionnement d'infrastructure avec Terraform : Création et gestion de ressources sur GCP.

Déploiement de microservices avec Kubernetes : Utilisation de Kubernetes pour gérer le cycle de vie des microservices.

Stockage partagé avec Google Filestore et Google Compute Disk : Assurer la persistance des données et des variables de session.

Architecture![Untitled diagram-2025-01-25-185811](https://github.com/user-attachments/assets/24093adc-4d07-4e51-b467-75e9392cd95d)
