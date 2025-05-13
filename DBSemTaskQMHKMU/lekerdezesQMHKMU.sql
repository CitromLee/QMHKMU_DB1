SELECT Nev FROM Hallgato
ORDER BY Nev ASC;

-- Egyszerű Lekérdezések (5 darab)

-- 1. Listázd ki az összes hallgató nevét ábécésorrendben.
SELECT Nev FROM Hallgato ORDER BY Nev ASC;

-- 2. Listázd ki azokat a könyveket, amelyek 2020 után jelentek meg.
SELECT * FROM Konyv WHERE KiadasEve > 2020;

-- 3. Listázd ki az összes könyv címét és megjelenési évét!
SELECT Cim, KiadasEve FROM Konyv;

-- 4. Melyik könyvtárban dolgozik a könyvtáros "Kovács Anna"?
SELECT K.Nev AS Konyvtar
FROM Konyvtar K
JOIN Konyvtaros_Konyvtar KK ON K.KonyvtarID = KK.KonyvtarID
WHERE KK.KonyvtarosID = 201;

-- 5. Listázd ki azokat a könyveket, amik 2020 után jelentek meg.
SELECT Cim, KiadasEve FROM Konyv
WHERE KiadasEve > 2020;


-- Összetett Lekérdezések

-- 1. Minden hallgató neve, és hogy melyik könyvet kölcsönözte (cím szerint):
SELECT H.Nev, K.Cim
FROM Kolcsonzes Ko
JOIN Hallgato H ON Ko.HallgatoAzonosito = H.HallgatoAzonosito
JOIN Konyv K ON Ko.KonyvID = K.KonyvID;

-- 2. Listázd ki a könyvtárosok nevét és azon könyvek címeit, amiket ők kezelnek!
SELECT T.Nev AS Konyvtaros, K.Cim AS Konyv
FROM Konyvtaros T
JOIN Konyvtaros_Konyv TK ON T.KonyvtarosID = TK.KonyvtarosID
JOIN Konyv K ON TK.KonyvID = K.KonyvID;

-- 3. Listázd ki azoknak a könyveknek a címét és kiadóját, amelyeket 'Kiss Péter' kölcsönzött!
SELECT K.Cim, Kiad.Nev AS Kiado
FROM Kolcsonzes Ko
JOIN Konyv K ON Ko.KonyvID = K.KonyvID
JOIN Kiado Kiad ON K.KiadoID = Kiad.KiadoID
JOIN Hallgato H ON Ko.HallgatoAzonosito = H.HallgatoAzonosito
WHERE H.Nev = 'Kiss Péter';

-- 4. Hány könyvet kölcsönzött eddig minden hallgató?
SELECT H.Nev, COUNT(*) AS KolcsonzesiSzam
FROM Kolcsonzes Ko
JOIN Hallgato H ON Ko.HallgatoAzonosito = H.HallgatoAzonosito
GROUP BY H.Nev;

-- 5. Könyvtáranként listázd ki a könyvtárosokat, és a könyvek számát, amiket kezelnek!
SELECT KT.Nev AS Konyvtar, T.Nev AS Konyvtaros, COUNT(KKV.KonyvID) AS KonyvekSzama
FROM Konyvtaros T
JOIN Konyvtaros_Konyvtar KTK ON T.KonyvtarosID = KTK.KonyvtarosID
JOIN Konyvtar KT ON KTK.KonyvtarID = KT.KonyvtarID
LEFT JOIN Konyvtaros_Konyv KKV ON T.KonyvtarosID = KKV.KonyvtarosID
GROUP BY KT.Nev, T.Nev;

-- Listázd ki azoknak a könyveknek a címét, amelyeket 'jó állapotban' kölcsönöztek ki, és a kölcsönzés dátumát is!
SELECT K.Cim, Ko.KolcsonzesDatum
FROM Kolcsonzes Ko
JOIN Konyv K ON Ko.KonyvID = K.KonyvID
WHERE Ko.Allapot = 'jó állapotban';