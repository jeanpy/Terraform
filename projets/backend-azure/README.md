# Backend Azure — TP13

Le compte de stockage et le container sont préparés en amont par le formateur, avec les droits RBAC nécessaires sur les blobs. Utiliser `az login`, copier les exemples, et migrer l'état après sauvegarde sécurisée :

```bash
terraform init -migrate-state -backend-config=backend.hcl
```

Une clé unique par stagiaire et par environnement est obligatoire. Éviter les identifiants d'accès aux Storage Accounts dans les fichiers et ne pas versionner backend.hcl. Voir [documentation backend azurerm](https://developer.hashicorp.com/terraform/language/backend/azurerm).
