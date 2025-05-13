CREATE DATABASE IF NOT EXISTS DBQMHKMU;
USE DBQMHKMU;


CREATE TABLE IF NOT EXISTS Hallgato (
    NeptunKod VARCHAR(6) PRIMARY KEY,
    Nev VARCHAR(100),
    Email VARCHAR(100),
    Telefonszam VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Kiado (
    ID INT PRIMARY KEY,
    Nev VARCHAR(100),
    Szekhely VARCHAR(100),
    Email VARCHAR(100),
    KonyvekSzama INT
);

CREATE TABLE IF NOT EXISTS Konyv (
    KonyvtariSzam INT PRIMARY KEY,
    Cim VARCHAR(100),
    KiadasEve INT,
    Temakor VARCHAR(50),
    KiadoID INT,
    FOREIGN KEY (KiadoID) REFERENCES Kiado(ID)
);

CREATE TABLE IF NOT EXISTS Konyvtar (
    Kod INT PRIMARY KEY,
    Nev VARCHAR(100),
    Utca VARCHAR(100),
    Hazszam VARCHAR(10),
    Varos VARCHAR(50),
    Nyitvatartas VARCHAR(50),
    AlkalmazottakSzama INT
);

CREATE TABLE IF NOT EXISTS Konyvtaros (
    Azonosito INT PRIMARY KEY,
    Nev VARCHAR(100),
    Reszleg VARCHAR(100),
    Muszakido VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Kolcsonzes (
    Azonosito INT PRIMARY KEY,
    NeptunKod VARCHAR(6),
    KonyvtariSzam INT,
    Datum DATE,
    VisszavitelHatarideje DATE,
    Allapot VARCHAR(50),
    FOREIGN KEY (NeptunKod) REFERENCES Hallgato(NeptunKod),
    FOREIGN KEY (KonyvtariSzam) REFERENCES Konyv(KonyvtariSzam)
);

CREATE TABLE IF NOT EXISTS Konyvtaros_Konyvtar (
    KonyvtarosID INT,
    KonyvtarID INT,
    PRIMARY KEY (KonyvtarosID, KonyvtarID),
    FOREIGN KEY (KonyvtarosID) REFERENCES Konyvtaros(Azonosito),
    FOREIGN KEY (KonyvtarID) REFERENCES Konyvtar(Kod)
);

CREATE TABLE IF NOT EXISTS Konyvtaros_Konyv (
    KonyvtarosID INT,
    KonyvID INT,
    PRIMARY KEY (KonyvtarosID, KonyvID),
    FOREIGN KEY (KonyvtarosID) REFERENCES Konyvtaros(Azonosito),
    FOREIGN KEY (KonyvID) REFERENCES Konyv(KonyvtariSzam)
);
