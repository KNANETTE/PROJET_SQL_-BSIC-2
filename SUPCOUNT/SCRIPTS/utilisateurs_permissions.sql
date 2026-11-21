use supcount;

create user if not exists 'admin_supcount'@'localhost'
identified by 'Admin123!';
create role if not exists 'role_admin';
grant all privileges on supcount.* to 'role_admin';
grant 'role_admin' to 'admin_supcount'@'localhost';
set default role 'role_admin' to 'admin_supcount'@'localhost';

create user if not exists 'app_supcount'@'localhost'
identified by 'App123!';
create role if not exists 'role_application';
grant select, insert, update, delete, execute on supcount.* to 'role_application';
grant 'role_application' to 'app_supcount'@'localhost';
set default role 'role_application' to 'app_supcount'@'localhost';

create user if not exists 'lecture_supcount'@'localhost'
identified by 'Lecture123!';
create role if not exists 'role_lecture';
grant select on supcount.* to 'role_lecture';
grant 'role_lecture' to 'lecture_supcount'@'localhost';
set default role 'role_lecture' to 'lecture_supcount'@'localhost';