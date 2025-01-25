#!/bin/bash
services=("front-service" "espace-perso-service" "inscription-service" "login-service" "logout-service" "objectif-financier-service" "transaction-service" "alertes-service")


for service in "${services[@]}"; do
  echo "Déploiement de $service..."
  kubectl apply -f "deploy-$service.yml"
done


echo "Création de l'Ingress..."
kubectl apply -f ingress-controller.yml


echo "Attente de la création du LoadBalancer et récupération de l'IP..."

LOAD_BALANCER_IP=""
while [ -z "$LOAD_BALANCER_IP" ]; do
  LOAD_BALANCER_IP=$(kubectl get ingress micro-services-ingress -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
  if [ -z "$LOAD_BALANCER_IP" ]; then
    echo "Pas encore d'IP attribuée, attente de 10 secondes..."
    sleep 10
  fi
done


for service in "${services[@]}"; do
  echo "Mise à jour de la variable d'environnement PUBLIC_IP dans le déploiement de $service..."
  kubectl set env deployment/$service PUBLIC_IP=$LOAD_BALANCER_IP
done

echo "Toutes les variables d'environnement PUBLIC_IP ont été mises à jour avec l'IP du LoadBalancer."
