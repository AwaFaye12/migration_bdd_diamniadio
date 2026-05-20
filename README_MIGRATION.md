# Migration de la base de données test_stage vers test_stage_migre

## Date de la migration
20 mai 2025

## Résumé
Migration complète d'une base PostgreSQL vers une nouvelle instance.

## Étapes réalisées

### 1. Analyse de la base source
- Tables : client, etudiant, test_perf
- Taille totale : 77 MB
- Utilisateurs : postgres, app_user

### 2. Sauvegarde complète
- Format : Custom (.backup)
- Commande : `pg_dump -U postgres -d test_stage -Fc > migration_full.backup`
- Taille du fichier : XX MB

### 3. Création de la base cible
- Nom : test_stage_migre
- Encodage : UTF8
- Commande : `CREATE DATABASE test_stage_migre;`

### 4. Restauration
- Commande : `pg_restore -U postgres -d test_stage_migre -c -v migration_full.backup`
- Résultat : Succès

### 5. Vérification des données
- Comparaison du nombre de tables : OK
- Comparaison du nombre de lignes : OK
- Vérification des séquences : OK

### 6. Migration des utilisateurs
- Utilisateurs recréés : app_user
- Droits appliqués : CONNECT, USAGE, SELECT, INSERT, UPDATE, DELETE

### 7. Problèmes rencontrés
- Aucun problème majeur

## Scripts utilisés
- migration_full.backup (sauvegarde)
- droits.sql (export des droits)

## Commandes utiles

### Connexion à la base source
```bash
psql -U postgres -d test_stage