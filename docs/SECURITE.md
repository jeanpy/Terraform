# Sécurité, coûts et état Terraform

- **Secrets :** les tokens Proxmox passent par variables d'environnement `PROXMOX_VE_API_TOKEN`, l'accès Azure via Azure CLI/identité Entra. Ne jamais commiter secrets, fichiers `.tfstate`, sauvegardes, plans sensibles, `.tfvars` privés ni clés SSH privées.
- **Proxmox :** utiliser token API à privilèges minimaux et TLS vérifié ; ne pas mettre `insecure = true` sauf dérogation temporaire explicite dans un lab isolé.
- **Azure :** limiter TCP/22 à `admin_cidr` (adresse publique de l'apprenant en `/32`) ; TCP/80 exposé uniquement pour la démonstration. Pas de mot de passe VM. Toujours vérifier l'abonnement et le Resource Group.
- **État :** le State peut contenir des secrets en clair. Backends distants : permissions séparées, encryption at rest, droits Blob minimaux, clé d'état unique par apprenant/environnement.
- **Coûts :** VM, IP publique, disque et stockage Azure sont facturables. Détruire les ressources pédagogiques après validation; fermer les comptes de laboratoire inutilisés.
- **Destruction :** toujours effectuer `terraform plan -destroy` et contrôler la cible avant `terraform destroy`.
