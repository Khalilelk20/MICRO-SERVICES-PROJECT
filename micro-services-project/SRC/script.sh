#!/bin/bash

# Variables adaptées à ton fichier Terraform
ZONE="us-central1-a"                  # Zone de ton instance Filestore
INSTANCE_NAME="nfs-instance"          # Nom de ton instance Filestore (adapté depuis filestore.tf)
PV_FILE="pv.yml"                      # Ton fichier YAML du PersistentVolume

# Récupération de l'adresse IP de l'instance Filestore
echo "Récupération de l'IP de l'instance Filestore..."
NFS_IP=$(gcloud filestore instances describe $INSTANCE_NAME --zone=$ZONE --format="value(networks.ipAddresses)")

# Vérification si l'IP a bien été récupérée
if [ -z "$NFS_IP" ]; then
  echo "Erreur : Impossible de récupérer l'IP de l'instance Filestore."
  exit 1
fi

echo "IP de l'instance Filestore : $NFS_IP"

# Remplacement du placeholder __NFS_IP__ par l'adresse IP réelle dans le fichier YAML
echo "Mise à jour du fichier $PV_FILE avec l'IP récupérée..."
sed -i "s/__NFS_IP__/$NFS_IP/" $PV_FILE

# Déploiement du PersistentVolume dans Kubernetes
echo "Déploiement du PersistentVolume..."
kubectl apply -f $PV_FILE

# Confirmation
echo "PersistentVolume déployé avec succès !"
