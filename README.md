Projet Kubernetes sur Google Cloud Platform (GCP)
Description
Ce projet vise à provisionner et déployer une architecture Kubernetes scalable sur Google Cloud Platform (GCP) en utilisant des pratiques d'Infrastructure as Code (IaC). Il utilise Terraform pour le provisionnement des ressources, Google Kubernetes Engine (GKE) pour gérer les clusters Kubernetes, et Google Filestore et Google Compute Disk pour le stockage des données et des variables de session des utilisateurs.

Les microservices sont déployés sur un cluster Kubernetes avec des répliques et sont exposés via un Ingress Controller et un Load Balancer, offrant ainsi une architecture fiable, performante et hautement disponible.


Terraform est utilisé pour provisionner un cluster Kubernetes avec 3 nœuds.
8 microservices sont déployés avec 2 répliques par microservice pour assurer une haute disponibilité.
Google Filestore est utilisé pour stocker les variables de session des utilisateurs et est monté comme un partage NFS (Network File System) dans le cluster.
Google Compute Disk est utilisé pour la persistance des données, en particulier pour héberger les données de la base MySQL.
Ingress Controller et Load Balancer sont configurés pour centraliser et exposer l'IP publique unique, permettant de réduire les coûts d'exposition sur Internet tout en assurant une navigation fluide entre les microservices.
Fonctionnalités
Provisionnement d'infrastructure avec Terraform : Création et gestion de ressources sur GCP.
Déploiement de microservices avec Kubernetes : Utilisation de Kubernetes pour gérer le cycle de vie des microservices.
Stockage partagé avec Google Filestore et Google Compute Disk : Assurer la persistance des données et des variables de session.

Architecture![Untitled diagram-2025-01-25-185811](https://github.com/user-attachments/assets/24093adc-4d07-4e51-b467-75e9392cd95d)
