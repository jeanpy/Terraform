# Publier sur GitHub

## Organisation recommandée

- **Dépôt stagiaires (public ou privé) :** `README.md`, `docs/`, `exercices/`, `projets/`, `cloud-init/`, `.gitignore`.
- **Dépôt formateur privé :** `corrections/` + grille et annotations privées.

**NE PAS** pousser l'intégralité de l'archive dans un dépôt public ; `.gitignore` ne filtre pas le dossier `corrections/` : il faut volontairement ne pas l'ajouter.

## Publication en ligne de commande

```bash
git init
git add README.md docs exercices projets cloud-init .gitignore
git status
git commit -m "Supports Terraform ACD : 15 TP"
git branch -M main
git remote add origin https://github.com/ORGANISATION/formation-terraform.git
git push -u origin main
```

Dans GitHub, créer un dépôt vide puis remplacer `ORGANISATION`. Si le dépôt existe déjà, cloner d'abord le dépôt et copier les supports dedans.

## Vérifications avant push

```bash
git status --short
git ls-files | grep -E '(corrections/|tfstate|\.tfvars$|backend\.hcl$|\.env$)' || true
```

Vérifier manuellement tout fichier suivi et son historique ; la commande ne constitue pas un audit complet de secrets. Ne pas supprimer les corrections d'un dépôt *après* les avoir publiées : elles resteraient visibles dans l'historique, il faudrait nettoyer l'historique/rotater les secrets éventuellement exposés.
