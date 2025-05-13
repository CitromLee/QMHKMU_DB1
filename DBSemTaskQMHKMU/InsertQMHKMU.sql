CREATE DATABASE IF NOT EXISTS DBQMHKMU;

USE DBQMHKMU;

INSERT INTO Hallgato VALUES ('AB1234', 'Kiss Péter', 'kiss.peter@email.com', '06306899264');
INSERT INTO Hallgato VALUES ('AB5598', 'Nagy Anna', 'nagy.anna@email.com', '06207693221');
INSERT INTO Hallgato VALUES ('BG65D2', 'Szabó János', 'szabo.janos@email.com', '06304567890');
INSERT INTO Hallgato VALUES ('GG44P1', 'Kovács László', 'kovacs.laszlo@email.com', '06201115433');

INSERT INTO Kiado VALUES (1, 'Könyvmolyképző', 'Budapest', 'molykepzo@konyvesekklubbja.hu', 12);
INSERT INTO Kiado VALUES (2, 'Libri', 'Budapest', 'libri@konyvesekklubbja.hu', 54);
INSERT INTO Kiado VALUES (3, 'Líra', 'Budapest', 'lira@konyvesekklubbja.hu', 25);
INSERT INTO Kiado VALUES (4, 'Móra', 'Budapest', 'info@mora.hu', 120);

INSERT INTO Konyv VALUES (10001, 'Harry Potter és a bölcsek köve', 1997, 'Fantasy', 1);
INSERT INTO Konyv VALUES (10002, 'A vörös pöttyös álom', 2021, 'Romantikus', 1);
INSERT INTO Konyv VALUES (10003, 'Árnyvadászok krónikái', 2019, 'Fantasy', 3);
INSERT INTO Konyv VALUES (10004, 'A párizsi könyvtár', 2022, 'Történelmi regény', 4);
INSERT INTO Konyv VALUES (10005, 'A szolgálólány meséje', 2018, 'Disztópia', 1);
INSERT INTO Konyv VALUES (10006, 'Kérdezz Felelek az univerzumról', 2020, 'Ismeretterjesztő', 2);
INSERT INTO Konyv VALUES (10007, 'A fiú, akit Karácsonynak hívnak', 2017, 'Gyermekirodalom', 4);
INSERT INTO Konyv VALUES (10008, 'A bölcs varázsló tanítása', 2023, 'Fantasy', 3);
INSERT INTO Konyv VALUES (10009, 'Tüskevár', 2016, 'Klasszikus', 3);
INSERT INTO Konyv VALUES (10010, 'A kék sziget rejtélye', 2020, 'Kalandregény', 1);
INSERT INTO Konyv VALUES (10011, 'A kíváncsi kisrobot', 2022, 'Gyermekkönyv', 1);


INSERT INTO Konyvtar VALUES (101, 'Fővárosi Könyvtár', 'Fő utca', '10', 'Budapest', '08:00-18:00', 20);
INSERT INTO Konyvtar VALUES (102, 'Debreceni Egyetem Könyvtár', 'Debrecen utca', '5', 'Debrecen', '09:00-17:00', 11);
INSERT INTO Konyvtar VALUES (103, 'Pécsi Tudományegyetem Könyvtár', 'Pécs utca', '3', 'Pécs', '10:00-16:00', 8);

INSERT INTO Konyvtaros VALUES (201, 'Kovács Anna', 'Kézikönyvtár', 'Délelőtt');
INSERT INTO Konyvtaros VALUES (202, 'Szabó Péter', 'Kölcsönző', 'Délután');
INSERT INTO Konyvtaros VALUES (203, 'Tóth Eszter', 'Olvasóterem', 'Délelőtt');
INSERT INTO Konyvtaros VALUES (204, 'Farkas Gábor', 'Digitalizálás', 'Délután');
INSERT INTO Konyvtaros VALUES (205, 'Nagy Júlia', 'Gyermekrészleg', 'Délelőtt');
INSERT INTO Konyvtaros VALUES (501, 'Nagy Sarolta', 'Gyerekrészleg', 'Délelőtt');

INSERT INTO Konyvtaros_Konyvtar VALUES (201, 101);
INSERT INTO Konyvtaros_Konyvtar VALUES (202, 101);
INSERT INTO Konyvtaros_Konyvtar VALUES (203, 102);
INSERT INTO Konyvtaros_Konyvtar VALUES (204, 103);
INSERT INTO Konyvtaros_Konyvtar VALUES (205, 102);

INSERT INTO Kolcsonzes VALUES (301, 'AB1234', 1001, '2025-05-01', '2025-05-15', 'jó állapotban');
INSERT INTO Kolcsonzes VALUES (302, 'AB5598', 1003, '2025-05-03', '2025-05-17', 'használt');
INSERT INTO Kolcsonzes VALUES (303, 'BG65D2', 1005, '2025-05-05', '2025-05-19', 'jó állapotban');
INSERT INTO Kolcsonzes VALUES (304, 'GG44P1', 1002, '2025-05-06', '2025-05-20', 'új');
INSERT INTO Kolcsonzes VALUES (305, 'AB1234', 1006, '2025-05-07', '2025-05-21', 'használt');


INSERT INTO Konyvtaros_Konyv VALUES (201, 10006);
INSERT INTO Konyvtaros_Konyv VALUES (201, 10010);
INSERT INTO Konyvtaros_Konyv VALUES (202, 10004);
INSERT INTO Konyvtaros_Konyv VALUES (202, 10007);
INSERT INTO Konyvtaros_Konyv VALUES (203, 10002);
INSERT INTO Konyvtaros_Konyv VALUES (204, 10005);
INSERT INTO Konyvtaros_Konyv VALUES (204, 10008);
INSERT INTO Konyvtaros_Konyv VALUES (205, 10009);
INSERT INTO Konyvtaros_Konyv VALUES (205, 10003);
INSERT INTO Konyvtaros_Konyv VALUES (205, 10011);
INSERT INTO Konyvtaros_Konyv VALUES (501, 10001);