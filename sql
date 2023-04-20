1. SELECT lot.numer_lotu, samolot.producent, samolot.typ from lot INNER JOIN samolot ON samolot.id = lot.samolot_id;
2. SELECT pasazer.imie, pasazer.nazwisko from pasazer INNER JOIN rezerwacja ON pasazer.id = rezerwacja.pasazer_id WHERE rezerwacja.numer_siedzenia is not null AND rezerwacja.bagaz is not null;
3. SELECT lot.numer_lotu FROM lot INNER JOIN rezerwacja ON lot.numer_lotu = rezerwacja.lot_numer_lotu INNER JOIN status_rezerwacji ON status_rezerwacji.id = rezerwacja.status_rezerwacji_id where status_rezerwacji.status != "zarezerwowano";
4. SELECT pasazer.imie, pasazer.nazwisko, status_rezerwacji.status from pasazer INNER JOIN rezerwacja ON pasazer.id = rezerwacja.pasazer_id INNER JOIN status_rezerwacji ON status_rezerwacji.id = rezerwacja.status_rezerwacji_id WHERE pasazer.imie = "Jan"and pasazer.nazwisko = "Nowak" GROUP BY status_rezerwacji.id;
5. SELECT lot.numer_lotu, lot.data_wylotu, samolot.typ FROM lot INNER JOIN samolot ON samolot.id = lot.samolot_id;
6. SELECT rezerwacja.id, status_rezerwacji.status from rezerwacja INNER JOIN status_rezerwacji ON status_rezerwacji.id = rezerwacja.status_rezerwacji_id;
7. SELECT pasazer.imie, pasazer.nazwisko,status_rezerwacji.status FROM pasazer INNER JOIN rezerwacja ON pasazer.id = rezerwacja.pasazer_id INNER JOIN status_rezerwacji ON status_rezerwacji.id = rezerwacja.status_rezerwacji_id INNER JOIN lot ON lot.numer_lotu = rezerwacja.lot_numer_lotu INNER JOIN samolot on samolot.id = lot.samolot_id WHERE samolot.typ = "Doors";
8. SELECT lot.numer_lotu, samolot.typ FROM lot INNER JOIN samolot ON lot.samolot_id = samolot.id;
9. SELECT pasazer.imie, pasazer.nazwisko, adres.wojewodztwo from pasazer INNER JOIN adres ON adres.id = pasazer.adres_id;
10. 
11. SELECT pasazer.imie, pasazer.nazwisko, COUNT(rezerwacja.id) FROM pasazer INNER JOIN rezerwacja ON pasazer.id = rezerwacja.pasazer_id GROUP BY pasazer.id ORDER BY `COUNT(rezerwacja.id)` DESC LIMIT 1
12. 
