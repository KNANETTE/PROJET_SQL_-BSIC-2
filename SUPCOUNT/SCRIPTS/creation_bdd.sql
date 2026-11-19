drop database if exists supcount;
create database supcount;
use supcount;
create table utilisateur
(
     id int auto_increment primary key,
    nom varchar(100) not null,
    prenom varchar(100) not null,
    email varchar(255) not null unique,
    mot_de_passe varchar(255) not null,
    date_creation date
);


create table groupe
(
    id int auto_increment primary key,
    nom varchar(100) not null,
    description varchar(255),
    type varchar(20) not null,
    date_creation date

);

create table categorie
(
    id int auto_increment primary key,
    libelle varchar(100) not null,
    description varchar(255)
);

create table utilisateur_groupe (
    id_utilisateur int not null,
    id_groupe int not null,
    date_adhesion date,
    primary key (id_utilisateur, id_groupe),
    foreign key (id_utilisateur) references utilisateur(id) on delete cascade,
    foreign key (id_groupe) references groupe(id) on delete cascade
);

create table invitation(
    id int auto_increment primary key,
    email varchar(255) not null,
    statut varchar(50) not null,
    date_invitation date,
    id_groupe int not null,
    id_utilisateur int not null,
    foreign key (id_groupe) references groupe(id) on delete cascade,
    foreign key (id_utilisateur) references utilisateur(id) on delete cascade
);


create table depense
( 
      id int auto_increment primary key, 
      nom varchar(100) not null,
      montant_depense decimal(10,2) not null,
      date_depense date not null,
      id_utilisateur int not null,
    id_groupe int not null,
    id_categorie int not null,
    foreign key (id_utilisateur) references utilisateur(id),
    foreign key (id_groupe) references groupe(id) on delete cascade,
    foreign key (id_categorie) references categorie(id)
);


create table depense_utilisateur
( 
    id_depense int not null,
    id_utilisateur int not null,
    primary key (id_depense, id_utilisateur),
    foreign key (id_depense) references depense(id) on delete cascade,
    foreign key (id_utilisateur) references utilisateur(id) on delete cascade

);


create table justificatif (
    id int auto_increment primary key,
    nom varchar(255) not null,
    url varchar(255) not null,
    date_justificatif date not null,
    id_depense int not null unique,
    foreign key (id_depense) references depense(id) on delete cascade
);

create table remboursement
 (
    id int auto_increment primary key,
    montant_remboursement decimal(10,2) not null,
    date_remboursement date not null,
     id_emetteur int not null,
    id_destinataire int not null,
    id_groupe int not null,
    foreign key (id_emetteur) references utilisateur(id),
    foreign key (id_destinataire) references utilisateur(id),
    foreign key (id_groupe) references groupe(id) on delete cascade


);










