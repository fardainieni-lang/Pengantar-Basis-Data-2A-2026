create database klinik_sehat_bersama;
use klinik_sehat_bersama;
CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(100),
    spesialisasi VARCHAR(50)
);
CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(100),
    tanggal_lahir DATE,
    no_telepon VARCHAR(15)
);
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(255),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);
INSERT INTO rekam_medis 
VALUES 
(1, 1, 1, '2026-04-01', 'Flu ringan'),
(2, 1, 1, '2026-04-02', 'Demam');

INSERT INTO dokter 
VALUES 
(1, 'Dr. dila', 'Umum'),
(2, 'Dr. ana', 'Gigi');

INSERT INTO pasien 
VALUES 
(1, 'naya', '2000-05-10', '081234567890'),
(2, 'fira', '1998-09-12', '082345678901');



DELETE FROM dokter
WHERE id_dokter = 1;
SELECT * FROM rekam_medis;
drop database klinik_sehat_bersama;
