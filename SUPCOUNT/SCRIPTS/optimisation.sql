use supcount;

explain select * from depense
where id_groupe = 1 and date_depense between '2026-11-01' and '2026-11-30'
order by date_depense;

create index idx_grp_date
on depense (id_groupe, date_depense);

explain select * from depense
where id_groupe = 1 and date_depense between '2026-11-01' and '2026-11-30'
order by date_depense;