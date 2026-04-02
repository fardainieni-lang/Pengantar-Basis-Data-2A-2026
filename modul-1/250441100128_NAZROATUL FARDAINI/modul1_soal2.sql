create database pelanggan;
use pelanggan;
create table pelanggan_setia (
	nomor_identitas int primary key
);
show tables;
describe pelanggan_setia;
alter table pelanggan_setia
modify nomor_identitas varchar(20);
drop database pelanggan;