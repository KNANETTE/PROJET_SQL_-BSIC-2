use supcount;
create view vue_depense_categorie as
select
depense.nom,
    depense.montant_depense,
    categorie.libelle
    from depense
    join categorie
    on depense.id_categorie = categorie.id;

    create view vue_total_depense_groupe as
    select
    groupe.nom,
    sum(depense.montant_depense) as total_depenses
    from groupe
    join depense
    on groupe.id = depense.id_groupe
    group by groupe.id, groupe.nom;
  


    create view vue_total_paye_par_utilisateur as
select
utilisateur.nom,
utilisateur.prenom,
sum(depense.montant_depense) as total_depenses
from utilisateur
join depense
on utilisateur.id = depense.id_utilisateur
group by utilisateur.id, utilisateur.nom, utilisateur.prenom;


create view  vue_remboursement as
select 
e.prenom as emetteur,
    d.prenom as destinataire,
    remboursement.montant_remboursement,
    remboursement.date_remboursement
from remboursement
join utilisateur e
on remboursement.id_emetteur = e.id
join utilisateur d
on remboursement.id_destinataire = d.id;

create view vue_utilisateur_groupe as
select
utilisateur.nom,
    utilisateur.prenom,
    groupe.nom as groupe
from utilisateur_groupe
join utilisateur
on utilisateur_groupe.id_utilisateur = utilisateur.id
join groupe
on utilisateur_groupe.id_groupe = groupe.id;

create view vue_justificatif as
select
justificatif.nom,
    justificatif.url,
    depense.nom as depense
from justificatif
join depense
on justificatif.id_depense = depense.id;