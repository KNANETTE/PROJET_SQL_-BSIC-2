use supcount;create user 'admin_supcount'@'localhost' 
identified by 'Admin123!';
grant all privileges on supcount.* to 'admin_supcount'@'localhost';

create user 'app_supcount'@'localhost'
identified by 'App123!';

grant select, insert, update, delete
on supcount.*
to 'app_supcount'@'localhost';

create user 'lecture_supcount'@'localhost'
identified by 'Lecture123!';

grant select
on supcount.*
to 'lecture_supcount'@'localhost';