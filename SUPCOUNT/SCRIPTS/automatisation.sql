delimiter //
create trigger verif_montant_depense
before insert on depense
for each row
begin
if new.montant_depense <= 0 then
signal sqlstate '45000' set message_text = 'Le montant de la depense doit etre superieur a 0';
end if;
end //
delimiter ;


delimiter //
create trigger verif_montant_remboursement
before insert on remboursement
for each row
begin
if new.montant_remboursement <= 0 then
signal sqlstate '45000' set message_text = 'Le montant du remboursement doit etre superieur a 0';
end if;
end //
delimiter ;


create event suppression_invitation_refusee
on schedule every 1 month
do 
delete from invitation 
where statut = 'refusee'; 

create event suppression_invitation_en_attente
on schedule every 1 month
do 
delete from invitation 
where statut = 'en attente'; 




