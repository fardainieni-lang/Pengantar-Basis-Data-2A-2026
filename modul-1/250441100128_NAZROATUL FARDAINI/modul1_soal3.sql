create database transaksi;
use transaksi;
create table transaksi_harian (
	id_transaksi int primary key,
    total decimal(8.2)
);
show tables;
describe transaksi_harian;
truncate table transaksi_harian;
drop table transaksi_harian;
select * from transaksi_harian;
drop database transaksi;
