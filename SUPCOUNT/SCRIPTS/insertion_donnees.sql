use supcount;
insert into utilisateur (nom, prenom, email, mot_de_passe, date_creation)
values
('KONE', 'Mariam', 'mariam@gmail.com', 'hash_fictif_1', '2026-11-01'),
('CISSE', 'Ibrahim', 'ibrahim@gmail.com', 'hash_fictif_2', '2026-11-01'),
('MULLAR', 'Rosa', 'rosa@gmail.com', 'hash_fictif_3', '2026-11-01'),
('AKPODE', 'Franck', 'franck@gmail.com', 'hash_fictif_4', '2026-11-01'),
('KOITA', 'Nana', 'nana@gmail.com', 'hash_fictif_5', '2026-11-01'),
('ADOTE', 'Emeline', 'emeline@gmail.com', 'hash_fictif_6', '2026-11-01'),
('ROBERT', 'Lucas', 'lucas@gmail.com', 'hash_fictif_7', '2026-11-01'),
('ARKIATE', 'Sarah', 'sarah@gmail.com', 'hash_fictif_8', '2026-11-01'),
('SIMON', 'Tom', 'tom@gmail.com', 'hash_fictif_9', '2026-11-01'),
('TOURE', 'Madah', 'madah@gmail.com', 'hash_fictif_10', '2026-11-01'),
('GARCIA', 'Hugo', 'hugo@gmail.com', 'hash_fictif_11', '2026-11-01');



insert into groupe( nom, description, type, date_creation)
values
('Weekend Suisse', 'Voyage entre amis en Suisse', 'ponctuel', '2026-11-01'),
('Colocation Paris', 'Partage des depenses de colocation', 'permanent', '2026-11-01'),
('Vacances Barcelone', 'Vacances entre amis', 'ponctuel', '2026-11-01'),
('Weekend Rome', 'Weekend touristique', 'ponctuel', '2026-11-01');


insert into categorie(libelle, description)
values 
('Transport', 'Frais de transport'),
('Restaurant', 'Repas et restaurants'),
('Hebergement', 'Hotels et logements'),
('Courses', 'Achats alimentaires'),
('Activites', 'Loisirs et activites');


insert into depense (nom, montant_depense, date_depense, id_utilisateur, id_groupe, id_categorie)
VALUES
('Transport Suisse', 350.00, '2026-11-05', 2, 1, 1),
('Hebergement Suisse', 400.00, '2026-11-05', 3, 1, 3),
('Courses Suisse', 150.00, '2026-11-06', 4, 1, 4),
('Activites Suisse', 200.00, '2026-11-06', 5, 1, 5),
('Restaurant Suisse', 100.00, '2026-11-07', 2, 1, 2);

insert into depense (nom, montant_depense, date_depense, id_utilisateur, id_groupe, id_categorie)
values

('Loyer novembre', 1200.00, '2026-11-01', 6, 2, 3),
('Courses semaine', 85.50, '2026-11-03', 7, 2, 4),
('Electricite', 64.30, '2026-11-08', 1, 2, 3),
('Pizza entre colocs', 48.00, '2026-11-10', 6, 2, 2),
('Courses weekend', 72.40, '2026-11-14', 7, 2, 4),

('Billets avion', 420.00, '2026-11-12', 8, 3, 1),
('Appartement Barcelone', 540.00, '2026-11-13', 10, 3, 3),
('Tapas', 96.00, '2026-11-14', 9, 3, 2),
('Visite Sagrada Familia', 120.00, '2026-11-15', 8, 3, 5),
('Metro et taxis', 55.00, '2026-11-15', 10, 3, 1),

('Train Rome', 180.00, '2026-11-17', 1, 4, 1),
('Hotel Rome', 380.00, '2026-11-17', 6, 4, 3),
('Restaurant tropical brunch', 110.00, '2026-11-18', 10, 4, 2),
('Visite Colisee', 64.00, '2026-11-18', 1, 4, 5),
('Courses Rome', 38.50, '2026-11-19', 6, 4, 4);

insert into depense_utilisateur (id_depense, id_utilisateur)
values
(6,1),(6,6),(6,7),
(7,1),(7,6),(7,7),
(8,1),(8,6),(8,7),
(9,6),(9,7),
(10,1),(10,7),

(11,8),(11,9),(11,10),
(12,8),(12,9),(12,10),
(13,9),(13,10),
(14,8),(14,9),
(15,8),(15,10),

(16,1),(16,6),(16,10),
(17,1),(17,6),(17,10),
(18,6),(18,10),
(19,1),(19,10),
(20,1),(20,6);

INSERT INTO utilisateur_groupe
(id_utilisateur, id_groupe, date_adhesion)
VALUES
(2,1,'2026-11-01'),
(3,1,'2026-11-01'),
(4,1,'2026-11-01'),
(5,1,'2026-11-01'),

(1,2,'2026-11-01'),
(6,2,'2026-11-01'),
(7,2,'2026-11-01'),

(8,3,'2026-11-01'),
(9,3,'2026-11-01'),
(10,3,'2026-11-01'),

(1,4,'2026-11-01'),
(6,4,'2026-11-01'),
(10,4,'2026-11-01');


INSERT INTO invitation
(email, statut, date_invitation, id_groupe, id_utilisateur)
VALUES
('julien@gmail.com', 'en attente', '2026-11-02', 1, 2),
('marie@gmail.com', 'acceptee', '2026-11-03', 2, 1),
('paul@gmail.com', 'refusee', '2026-11-04', 3, 8);

INSERT INTO depense_utilisateur
(id_depense, id_utilisateur)
VALUES
(1,2),(1,3),(1,4),(1,5),
(2,2),(2,3),(2,4),(2,5),
(3,2),(3,3),(3,4),(3,5),
(4,2),(4,3),(4,4),(4,5),
(5,2),(5,3),(5,4),(5,5);


INSERT INTO justificatif
(nom, url, date_justificatif, id_depense)
VALUES
('ticket_transport.jpg',
 '/justificatifs/ticket_transport.jpg',
 '2026-11-05',
 1),

('facture_hotel.pdf',
 '/justificatifs/facture_hotel.pdf',
 '2026-11-05',
 2),

('ticket_restaurant.jpg',
 '/justificatifs/ticket_restaurant.jpg',
 '2026-11-07',
 5);


INSERT INTO remboursement
(montant_remboursement,
 date_remboursement,
 id_emetteur,
 id_destinataire,
 id_groupe)
VALUES

(75.00,
 '2026-11-08',
 5,
 2,
 1),

(125.00,
 '2026-11-08',
 4,
 3,
 1);
 