# Nom du Projet

Conception de la Base de Données et Documentation SQL/UML pour Bookify.

## Table des matières

- [Aperçu](#aperçu)
- [Conception des diagrammes UML](#diagrame-de-cas-dutilisation-diagramme-de-classe-diagramme-de-sequence)
- [Schéma de la Base de Données](#schéma-de-la-base-de-données)
- [Initialisation de la Base de Données](#initialisation-de-la-base-de-données)
- [Requêtes](#requêtes)
- [Utilisation](#utilisation)
- [Contributions](#contributions)
- [Licence](#licence)

## Aperçu
Un système de gestion de réservation de salles pour l'entreprise Bookify. Ce système devra permettre aux employés de réserver des salles de réunion en fonction de la disponibilité et des besoins spécifiques.

## Schéma de la Base de Données

La shéma gére les informations sur les salles de réunion, les employés, les réservations, les équipements, et les horaires

### Tables
 Les tables incluent des clés primaires, des clés étrangères, et des informations essentielles pour garantir une gestion efficace des données.
- **Equipements**.
- **Salles**.
- **Equipement_Salle**.
- **Employes**.
- **Invites**.
- **Reservations** .

### Initialisation

Les script d'initialisation et de creations sont dans le fichier bookify.sql.

## Requêtes

Quelques exemples de requêtes SQLs implémentées.

- Requête 1 : SELECT DISTINCT departement AS depatements_disponible FROM Employes;
  
- Requête 2 : SELECT COUNT(DISTINCT departement) AS nmbr_depatements_disponible FROM Employes;
  
- Requête 3 : SELECT * FROM Reservations WHERE TIMESTAMPDIFF(HOUR, date_Debut, date_Fin) < 2;
  
- Requête 4 : SELECT Reservations.id,
Employes.nom,
Employes.email,
Employes.departement,
Employes.poste,
Reservations.date_Debut,
Reservations.date_Fin
FROM Reservations
INNER JOIN Employes ON Reservations.employe_Id=Employes.id
where Employes.departement='Cyber security';

- Requête 5 : SELECT Invites.id, Invites.employe_Id, Employes.nom, Employes.poste, Invites.type_invite 
FROM Employes
LEFT JOIN Employes ON Invites.employe_Id = Employes.id;.

## Utilisation

Copiez le code dans le fichier bookify.sql et le executer sur un systeme de gestion de donnees

## Licence

[Licence MIT](https://opensource.org/licenses/MIT).
