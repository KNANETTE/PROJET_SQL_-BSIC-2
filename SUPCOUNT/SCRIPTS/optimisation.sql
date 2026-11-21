-- A lancer une seule fois, apres creation_bdd.sql et insertion_donnees.sql
use supcount;

-- AVANT l'index
explain select * from depense
where id_groupe = 1 and date_depense between '2026-11-01' and '2026-11-30'
order by date_depense;

create index idx_groupe_date
on depense (id_groupe, date_depense);

-- APRES l'index
explain select * from depense
where id_groupe = 1 and date_depense between '2026-11-01' and '2026-11-30'
order by date_depense;