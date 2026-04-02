create database library;
use library;
create table koleksi_buku_langka (
	id_buku bigint primary key,
    judul varchar(250),
    tahun_terbit year,
    estimasi_harga decimal(8,2)
);
show tables;
describe koleksi_buku_langka;
