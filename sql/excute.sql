-- Buatlah query untuk mendapatkan seluruh isi table MataKuliah !
select * from "MataKuliah";

-- Buatlah query untuk mendapatkan NoMhs dan Nama dari table Mahasiswa !
select "NoMhs", "Nama" from "Mahasiswa";

-- Buatlah query untuk mendapatkan seluruh isi table MataKuliah yang SKSnya = 1 !
select * from "MataKuliah" where "SKS" = 1;

-- Buatlah query untuk mendapatkan dosen yang namanya diawali huruf “A” !
select * from "Dosen" where "Nama" like 'J%';

-- Buatlah query untuk mendapatkan dosen yang mengajar matakuliah dengan kode “KOM410” !
-- (diperlukan semua kolom dosen, tidak lebih tidak kurang)
select d.*
from "Dosen" as d
         join "MataKuliah" mk on d."NIK" = mk."NIKDosen"
where mk."Kode" = 'KOM410';

-- Buatlah query untuk mendapatkan nama mahasiswa yang diajar oleh dosen dengan NIK “AB00938” !
-- (diperlukan hanya kolom Nama mahasiswa)
select m."Nama"
from "MataKuliah" mk
         join "Nilai" n on mk."Kode" = n."KodeMK"
         join "Mahasiswa" m on n."NoMhs" = n."NoMhs"
where mk."NIKDosen" = '0987654321'
group by m."NoMhs"

-- Buatlah query untuk mendapatkan nilai paling tinggi dari matakuliah dengan kode “KOM410” !
-- (hanya 1 kolom yg diperlukan : “NilaiTertinggi”)
select coalesce(max(n."Nilai"), 0) as "NilaiTertinggi"
from "Nilai" as n
where n."KodeMK" = 'KOM410';

-- Buatlah query untuk mendapatkan nilai rata–rata dari semua matakuliah !
-- (kolom yang diperlukan : “NamaMataKuliah”, “NilaiRataRata”)
select mk."Nama" as "NamaMataKuliah", coalesce(avg(n."Nilai"), 0) as "NilaiRataRata"
from "MataKuliah" mk
         join "Nilai" n on mk."Kode" = n."KodeMK"
group by mk."Kode";

-- Buatlah query untuk mengubah nilai mahasiswa dengan NoMhs “GF201004200” dan
-- KodeMataKuliah “KOM410” menjadi 80
update "Nilai"
set "Nilai" = 80
where "NoMhs" = 'MHS001' and "KodeMK" = 'MK101';

-- Buatlah query untuk mengubah semua nilai mahasiswa yang dosennya bernama
-- “SURATMAN” menjadi 0 !
update "Nilai"
set "Nilai" = 0
from "MataKuliah" as mk
join "Dosen" as d on mk."NIKDosen" = d."NIK"
where d."Nama" = 'SURATMAN' and "Nilai"."KodeMK" = mk."Kode";

-- Buatlah query untuk mengosongkan table Nilai !
delete from "Nilai";

-- Buatlah query untuk menghapus mahasiswa dengan NoMhs “GH201004201” !
delete from "Mahasiswa" where "NoMhs" = 'GH201004201';

-- Buatlah query untuk memasukan mahasiswa berikut ini : Nama : “Andi”, NoMhs :
-- “FG2012088”, Tanggal Lahir: 20 januari 1995
insert into "Mahasiswa" ("NoMhs", "Nama", "TanggalLahir") values ('FG2012088', 'Andi', '1995-01-20');

-- Buatlah query untuk mendapatkan mahasiswa yang tanggal lahirnya sama dengan dosen!
-- (hanya perlu kolom NamaMahasiswa, NamaDosen, TanggalLahir)
select m."Nama" as "NamaMahasiswa", d."Nama" as "NamaDosen", m."TanggalLahir"
from "Mahasiswa" m
         join "Dosen" d on m."TanggalLahir" = d."TanggalLahir";

-- Buatlah query untuk mengubah semua nilai mahasiswa menjadi 80 di mata kuliah Kalkulus 2 !
update "Nilai"
set "Nilai" = 80
from "MataKuliah" as mk
where "Nilai"."KodeMK" = mk."Kode" and mk."Nama" = 'Kalkulus 2';
