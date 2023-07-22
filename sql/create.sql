-- postgreSQL
-- DB Diagram: https://dbdiagram.io/d/64bb456e02bd1c4a5e80a3fe

CREATE TABLE "Dosen" (
  "NIK" varchar(20) PRIMARY KEY,
  "Nama" varchar(100) NOT NULL,
  "TanggalLahir" timestamp NOT NULL
);

CREATE TABLE "MataKuliah" (
  "Kode" varchar(10) PRIMARY KEY,
  "NIKDosen" varchar(20),
  "Nama" varchar(100) NOT NULL,
  "SKS" smallint NOT NULL
);

CREATE TABLE "Nilai" (
  "KodeMK" varchar(10),
  "NoMhs" varchar(10),
  "Nilai" float NOT NULL
);

CREATE TABLE "Mahasiswa" (
  "NoMhs" varchar(20) PRIMARY KEY,
  "Nama" varchar(100) NOT NULL,
  "TanggalLahir" timestamp NOT NULL,
  "TanggalMasuk" timestamp
);

CREATE UNIQUE INDEX ON "Nilai" ("KodeMK", "NoMhs");

ALTER TABLE "MataKuliah" ADD FOREIGN KEY ("NIKDosen") REFERENCES "Dosen" ("NIK");

ALTER TABLE "Nilai" ADD FOREIGN KEY ("KodeMK") REFERENCES "MataKuliah" ("Kode");

ALTER TABLE "Nilai" ADD FOREIGN KEY ("NoMhs") REFERENCES "Mahasiswa" ("NoMhs");
