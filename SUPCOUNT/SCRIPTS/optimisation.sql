use supcount;
create index idx_groupe_date
on depense (id_groupe, date_depense);

create index idx_utilisateur_date
on depense (id_utilisateur, date_depense);