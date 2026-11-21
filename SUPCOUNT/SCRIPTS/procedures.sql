use supcount;
drop procedure if exists afficher_depense_groupe;
delimiter //
create procedure afficher_depense_groupe(
    in p_id_groupe int
)
begin
    select *
    from depense
    where id_groupe = p_id_groupe;
end //
delimiter ; 

drop procedure if exists total_depense_groupe;
delimiter //
create procedure total_depense_groupe(
    in p_id_groupe int
)
begin
    select
    sum(montant_depense) as total_depense
    from depense
    where id_groupe = p_id_groupe;

end //

delimiter ;

drop procedure if exists afficher_remboursement_groupe;
delimiter //
create procedure afficher_remboursement_groupe(
    in p_id_groupe int
)
begin
    select *
    from remboursement
    where id_groupe = p_id_groupe;
end //
delimiter ; 

drop procedure if exists afficher_depense_categorie;
delimiter //
create procedure afficher_depense_categorie(
    in p_id_categorie int
)
begin
    select *
    from depense
    where id_categorie = p_id_categorie;
end //

delimiter ;