
CREATE TABLE Equipements (
    id INT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    type_equipement VARCHAR(20) NOT NULL
);

CREATE TABLE Salles (
    id INT PRIMARY KEY,
    nom VARCHAR(30) NOT NULL,
    capacite INT NOT NULL,
);

CREATE TABLE Equipement_Salle (
    salle_Id INT,
    equipement_Id INT,
    is_fix BOOLEAN NOT NULL DEFAULT true,
    PRIMARY KEY (salle_Id, equipement_Id),
    FOREIGN KEY (salle_Id) REFERENCES Salles(id),
    FOREIGN KEY (equipement_Id) REFERENCES Equipements(id)
);

CREATE TABLE Employes (
    id INT PRIMARY KEY,
    nom VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    departement VARCHAR(50),
    poste VARCHAR(50) NOT NULL
);

CREATE TABLE Invites (
    id INT PRIMARY KEY,
    employe_Id INT,
    type_invite VARCHAR(50),
    FOREIGN KEY (employe_Id) REFERENCES Employes(id)
);

CREATE TABLE Reservations (
    id INT PRIMARY KEY,
    salle_Id INT,
    employe_Id INT,
    date_Debut DATETIME NOT NULL,
    date_Fin DATETIME NOT NULL,
    FOREIGN KEY (salle_Id) REFERENCES Salles(id),
    FOREIGN KEY (employe_Id) REFERENCES Employes(id)
);






INSERT INTO Equipements (id, nom, type_equipement) VALUES
(1, 'Projecteur', 'fix'),
(2, 'Table bureau', 'fix'),
(3, 'PC portable', 'not fix'),
(4, 'POOFA', 'not fix'),
(5, 'Tableau', 'fix');

INSERT INTO Salles (id, nom, capacite) VALUES
(1, 'Agora', 100),
(2, 'Salle de Conference', 80),
(3, 'Alkhawarizmi', 70),
(4, 'Breaking code', 30)
(5, 'Namek', 40),
(6, '2B || !2B', 35),
(7, 'Code warriors', 50),
(8, 'Code strikers', 45),
(9, 'Salle A', 60),
(10, 'Salle B', 55),
(11, 'Salle AC', 75);

INSERT INTO Employes (id, nom, email, departement, poste) VALUES
(1, 'Adnane Roujane', 'roujane2003@gmail.com', 'AI', 'Developer'),
(2, 'Omar Enneddi', 'enneddiomar@gmail.com', 'IT', 'Formateur'),
(3, 'Nabil Chabab', 'nabil.chababnabil@gmail.com', 'JAVA SCRIPT', 'Developer'),
(4, 'Abdelqouddouss Fadli', 'fadliabdelquoddouss.06@gmail.com', 'JAVA SCRIPT', 'Ingenieur'),
(5, 'Salma El Gmiri', 'salmaelgmiri04@gmail.com', 'Front-end', 'Apprenant'),
(6, 'Ghizlane Meqdar', 'meqdarghizlane@gmail.com', 'JAVA SCRIPT', 'Developer'),
(7, 'Zakaria Elkoh', 'zakaria.elkoh10@gmail.com', 'Département de linguistique', 'Formateur'),
(8, 'Rachid Echafai', 'rachidchaf2001@gmail.com', 'DATA', 'Developer'),
(9, 'Abdelilah Sadiqui', 'sadiquiabdelilah@gmail.com', 'DATA', 'Apprenant'),
(10, 'Anas Elmakhloufi', 'anasdev8@gmail.com', 'Back-end', 'Developer'),
(11, 'Said Aabilla', 'said.aabilla@gmail.com', 'IT', 'Ingenieur'),
(12, 'Zineb Oussous', 'zineb@gmail.com', 'IT', 'Directrice'),
(13, 'El Mehdi Er.raji', 'elmehdiworkemail@gmail.com', 'IT', 'Ingenieur'),
(14, 'Anas Aliky', 'anasalk37@gmail.com', 'Cyber security', 'Developer'),
(15, 'Ibtissam El Hani', 'ibtissamelhani36@gmail.com', 'JAVA', 'Ingenieure'),
(16, 'Aicha Louafi', 'sanalouafi2003@gmail.com', 'Design', 'Designer'),
(17, 'Abdellatif Taouil', 'abdotaouil03@gmail.com', 'Front-end', 'Developer'),
(18, 'Ibtihal Boukhanchouch', 'ibtihalboukhanchouch@gmail.com', 'JAVA', 'Developer'),
(19, 'Mohamed Acharouaou', 'acharouaoumohamed@gmail.com', 'Front-end', 'Developer'),
(20, 'Fatima Ezahrae Adardor', 'fatimzfatima5@gmail.com', 'Data', 'Developer'),
(21, 'Aymane Bisdaoune', 'aymane.bisdaoune@gmail.com', 'Département de linguistique', 'Formateur'),
(22, 'Abdelouahab Lahdili', 'lhdiliihabe@gmail.com', 'JAVA', 'Developer'),
(23, 'Abdelhamid Lamtioui', 'hamidlamtioui583@gmail.com', 'BOOTSTRAP', 'Formateur');

INSERT INTO Invites (id, employe_Id, type_invite) VALUES
(1, 12, 'Invite externe'),
(2, 11, 'Associate'),
(3, 1, 'Client'),
(4, 3, 'Client'),
(5, 4, 'Conseiller externe'),
(6, 21, 'Formateur externe'),
(7, 8, 'Technicien externe'),
(8, 13, 'Technicien externe'),
(9, 10, 'Technicien externe'),
(10, 14, 'Technicien externe'),
(11, 2, 'Employe local'),
(12, 5, 'Employe local'),
(13, 6, 'Employe local'),
(14, 7, 'Employe local'),
(15, 9, 'Employe local'),
(16, 15, 'Employe local'),
(17, 16, 'Employe local'),
(18, 18, 'Employe local'),
(19, 17, 'Client');

INSERT INTO Reservations (id, salle_Id, employe_Id, date_Debut, date_Fin) VALUES
(1, 1, 3, '2023-01-01 09:30:00', '2023-01-01 12:30:00'),
(2, 2, 5, '2023-01-01 14:00:00', '2023-01-01 17:00:00'),
(3, 3, 7, '2023-01-01 15:30:00', '2023-01-01 18:30:00'),
(4, 4, 11, '2023-01-01 10:45:00', '2023-01-01 13:45:00'),
(5, 5, 2, '2023-01-01 11:15:00', '2023-01-01 14:15:00'),
(6, 6, 1, '2023-01-01 13:00:00', '2023-01-01 16:00:00'),
(7, 7, 12, '2023-01-01 16:30:00', '2023-01-01 19:30:00'),
(8, 8, 4, '2023-01-01 12:00:00', '2023-01-01 15:00:00'),
(9, 9, 23, '2023-01-01 09:00:00', '2023-01-01 12:00:00'),
(10, 10, 20, '2023-01-01 14:45:00', '2023-01-01 17:45:00'),
(11, 11, 8, '2023-01-01 13:30:00', '2023-01-01 16:30:00'),
(12, 2, 13, '2023-01-01 10:00:00', '2023-01-01 13:00:00'),
(13, 3, 14, '2023-01-01 12:30:00', '2023-01-01 15:30:00'),
(14, 4, 6, '2023-01-01 15:00:00', '2023-01-01 18:00:00'),
(15, 5, 9, '2023-01-01 11:45:00', '2023-01-01 14:45:00'),
(16, 2, 16, '2023-01-01 14:15:00', '2023-01-01 17:15:00'),
(17, 1, 21, '2023-01-01 15:45:00', '2023-01-01 18:45:00'),
(18, 8, 18, '2023-01-01 16:15:00', '2023-01-01 19:15:00'),
(19, 11, 2, '2023-01-01 11:30:00', '2023-01-01 14:30:00'),
(20, 9, 19, '2023-01-01 14:00:00', '2023-01-01 17:00:00'),
(21, 7, 20, '2023-01-01 13:15:00', '2023-01-01 16:15:00'),
(22, 1, 15, '2023-01-01 10:30:00', '2023-01-01 13:30:00'),
(23, 6, 17, '2023-01-01 12:00:00', '2023-01-01 15:00:00'),
(24, 3, 10, '2023-01-01 15:30:00', '2023-01-01 18:30:00'),
(25, 2, 22, '2023-01-01 14:45:00', '2023-01-01 17:45:00'),
(26, 1, 1, '2023-01-01 12:15:00', '2023-01-01 15:15:00'),
(27, 4, 5, '2023-01-01 11:00:00', '2023-01-01 14:00:00'),
(28, 5, 10, '2023-01-01 13:45:00', '2023-01-01 16:45:00'),
(29, 8, 15, '2023-01-01 16:00:00', '2023-01-01 19:00:00'),
(30, 7, 18, '2023-01-01 13:30:00', '2023-01-01 16:30:00');


INSERT INTO Equipement_Salle (salle_Id, equipement_Id, is_fix) VALUES
(1, 1, true), 
(1, 2, true), 
(2, 3, false), 
(2, 4, false), 
(3, 3, false), 
(3, 5, true), 
(4, 3, false), 
(4, 5, true), 
(5, 2, true), 
(5, 3, false), 
(6, 3, false), 
(7, 1, true), 
(8, 4, false), 
(8, 5, true), 
(9, 3, false), 
(10, 2, true), 
(11, 4, false); 



SELECT DISTINCT departement AS depatements_disponible FROM Employes;

SELECT COUNT(DISTINCT departement) AS nmbr_depatements_disponible FROM Employes;

SELECT * FROM Reservations WHERE TIMESTAMPDIFF(HOUR, date_Debut, date_Fin) < 2;

SELECT Reservations.id,
Employes.nom,
Employes.email,
Employes.departement,
Employes.poste,
Reservations.date_Debut,
Reservations.date_Fin
FROM Reservations
INNER JOIN Employes ON Reservations.employe_Id=Employes.id
where Employes.departement='Cyber security';

SELECT Invites.id, Invites.employe_Id, Employes.nom, Employes.poste, Invites.type_invite 
FROM Employes
LEFT JOIN Employes ON Invites.employe_Id = Employes.id;

SELECT departement, COUNT(*) AS nombre_employes
FROM Employes GROUP BY departement;