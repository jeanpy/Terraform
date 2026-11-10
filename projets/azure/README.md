# Projet de départ Azure

Exécuter `az login`, vérifier `az account show`, adapter `terraform.tfvars.example`, puis `terraform init`, `terraform validate` et `terraform plan`.

L'adresse `203.0.113.10/32` est un **exemple de documentation non routable** : la remplacer impérativement par votre IP publique réelle en /32. La région, la taille VM et les images sont à valider selon quotas/abonnement. Le projet de départ ne crée qu'un Resource Group : les ressources réseau et VM sont à écrire pendant les TP.
