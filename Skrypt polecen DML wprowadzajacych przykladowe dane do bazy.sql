
ALTER SESSION SET NLS_DATE_FORMAT = 'dd-mm-yyyy';

--tabela OSOBA
insert into OSOBA (ID,Nazwisko ,Imie,Imie_ojca ,PESEL)
select nvl(max(ID)+1,1),'Kowalski','Jan', 'Tadeusz',98765432109
from Osoba;

insert into OSOBA (ID,Nazwisko ,Imie,Imie_ojca ,PESEL)
select nvl(max(ID)+1,1),'Nowak','Dmytr', 'Piotr',67549754691
from Osoba;

insert into OSOBA (ID,Nazwisko ,Imie,Imie_ojca ,PESEL)
select nvl(max(ID)+1,1),'Lewandowski','Karol', 'Jan',54965432971
from Osoba;

insert into OSOBA (ID,Nazwisko ,Imie,Imie_ojca ,PESEL)
select nvl(max(ID)+1,1),'Mazur','Ewa', 'Piotr',87547864356
from Osoba;

insert into OSOBA (ID,Nazwisko ,Imie,Imie_ojca ,PESEL)
select nvl(max(ID)+1,1),'Grabowski','Mateusz', 'Wojtek',86490655578
from Osoba;

insert into OSOBA (ID,Nazwisko ,Imie,Imie_ojca ,PESEL)
select nvl(max(ID)+1,1),'Wozniak','Maria', 'Tadeusz',77788854123
from Osoba;

insert into OSOBA (ID,Nazwisko ,Imie,Imie_ojca ,PESEL)
select nvl(max(ID)+1,1),'Wozniak','JaN', 'Tadeusz',77788854123
from Osoba;

insert into OSOBA (ID,Nazwisko ,Imie,Imie_ojca ,PESEL)
select nvl(max(ID)+1,1),'Grabowski','KATARZYNA', 'Wojtek',86490665578
from Osoba;



--TABELA LEKI
insert into leki(ID,NAZWA_LEKA,OPIS_LEKA)
select nvl(max(ID)+1,1), 'Vita Buerlecithin',' lek na zmeczenie oraz poprawe pamieci i koncentracji'
from leki;

insert into leki(ID,NAZWA_LEKA,OPIS_LEKA)
select nvl(max(ID)+1,1), 'Bilomag','Utrzymuje sprawnosc intelektualna, utrzymuje funkcjonowanie ukladu nerwowego.'
from leki;

insert into leki(ID,NAZWA_LEKA,OPIS_LEKA)
select nvl(max(ID)+1,1), 'ALINESS','sposob zywienia oraz zdrowy tryb zycia sa podstawa prawidlowego funkcjonowania organizmu.'
from leki;

insert into leki(ID,NAZWA_LEKA,OPIS_LEKA)
select nvl(max(ID)+1,1), 'Donectil','Leczenie lagodnej i srednio ciezkiej postaci otepienia w chorobie Alzheimera'
from leki;




--TABELA STANOWISKO
--zwiekszenie atrybuta Pensja bo number(6,2) za malo
ALTER TABLE STANOWISKO
  MODIFY( PENSJA NUMBER(20,2));
  
insert into STANOWISKO (ID,NAZWA_STANOWISKA,PENSJA)
select nvl(max(ID)+1,1),'DYREKTOR',(10000.89)
from STANOWISKO;

insert into STANOWISKO (ID,NAZWA_STANOWISKA,PENSJA)
select nvl(max(ID)+1,1),'Doktor',7300.79
from STANOWISKO;

insert into STANOWISKO (ID,NAZWA_STANOWISKA,PENSJA)
select nvl(max(ID)+1,1),'Pielegniarka',(5123.65)
from STANOWISKO;

--tabela Pracownik

ALTER TABLE Pracownik
  MODIFY( Data_zwolnienia date null);


INSERT INTO Pracownik  (ID ,OSOBA_ID ,STANOWISKO_ID ,Data_zatrudnienia ,Data_zwolnienia ,Telefon_kontaktowy)
	VALUES ( (select nvl(max(Pracownik.ID)+1,1) from Pracownik),
    (select Osoba.id from Osoba where Osoba.id =1),
    (Select id from stanowisko where stanowisko.nazwa_stanowiska = 'Doktor'),
    '20-01-1997',null,3503);

INSERT INTO Pracownik  (ID ,OSOBA_ID ,STANOWISKO_ID ,Data_zatrudnienia ,Data_zwolnienia ,Telefon_kontaktowy)
	VALUES ( (select nvl(max(Pracownik.ID)+1,1) from Pracownik),
    (select Osoba.id from Osoba where Osoba.id =2),
    (Select id from stanowisko where stanowisko.nazwa_stanowiska = 'Doktor'),
    '20-01-1957',null,56574);

INSERT INTO Pracownik  (ID ,OSOBA_ID ,STANOWISKO_ID ,Data_zatrudnienia ,Data_zwolnienia ,Telefon_kontaktowy)
	VALUES ( (select nvl(max(Pracownik.ID)+1,1) from Pracownik),
    (select Osoba.id from Osoba where Osoba.id =3),
    (Select id from stanowisko where stanowisko.nazwa_stanowiska = 'Doktor'),
    '20-01-1977',null,67677);
    
INSERT INTO Pracownik  (ID ,OSOBA_ID ,STANOWISKO_ID ,Data_zatrudnienia ,Data_zwolnienia ,Telefon_kontaktowy)
	VALUES ( (select nvl(max(Pracownik.ID)+1,1) from Pracownik),
    (select Osoba.id from Osoba where Osoba.id =4),
    (Select id from stanowisko where stanowisko.nazwa_stanowiska = 'DYREKTOR'),
    '12-01-1969',null,56888);
    
    INSERT INTO Pracownik  (ID ,OSOBA_ID ,STANOWISKO_ID ,Data_zatrudnienia ,Data_zwolnienia ,Telefon_kontaktowy)
	VALUES ( (select nvl(max(Pracownik.ID)+1,1) from Pracownik),
    (select Osoba.id from Osoba where Osoba.id =5),
    (Select id from stanowisko where stanowisko.nazwa_stanowiska = 'DYREKTOR'),
    '12-01-1944','10.08.1969',56883);
    
    
    
    
 --tabela PACJENT
 
 ALTER TABLE PACJENT
  MODIFY( Data_wypisu_pacjenta date null);

    
         INSERT INTO Pacjent  (ID ,OSOBA_ID ,Data_przyjecia_pacjenta ,Data_wypisu_pacjenta)
	VALUES ( (select nvl(max(Pacjent.ID)+1,1) from Pacjent),
    (select Osoba.id from Osoba where Osoba.id =6),
    '20-01-2011',null
    );
         INSERT INTO Pacjent  (ID ,OSOBA_ID ,Data_przyjecia_pacjenta ,Data_wypisu_pacjenta)
	VALUES ( (select nvl(max(Pacjent.ID)+1,1) from Pacjent),
    (select Osoba.id from Osoba where Osoba.id =7),
    '20-01-2018',null
    );
    
             INSERT INTO Pacjent  (ID ,OSOBA_ID ,Data_przyjecia_pacjenta ,Data_wypisu_pacjenta)
	VALUES ( (select nvl(max(Pacjent.ID)+1,1) from Pacjent),
    (select Osoba.id from Osoba where Osoba.id =8),
    '20-01-2016','20-12-2016'
    );
    
                 INSERT INTO Pacjent  (ID ,OSOBA_ID ,Data_przyjecia_pacjenta ,Data_wypisu_pacjenta)
	VALUES ( (select nvl(max(Pacjent.ID)+1,1) from Pacjent),
    (select Osoba.id from Osoba where Osoba.id =9),
    '20-01-2000','20-12-2006'
    );



 --tabela DIAGNOZY
                 INSERT INTO DIAGNOZA  (ID,PRACOWNIK_ID ,PACJENT_ID ,Nazwa_diagnozy,Opis_diagnozy ,Data_diagnozy)
	VALUES ( (select nvl(max(DIAGNOZA.ID)+1,1) from DIAGNOZA),
    (select PRACOWNIK.id from PRACOWNIK where PRACOWNIK.ID = 1),
    (select PACJENT.id from PACJENT where PACJENT.ID = 1),
    'zaburzenia pamieci',
    'charakteryzuje sie utrata zdolnosci do zapamietywania informacji oraz zasobo',
    '20-02-2019'
    );
    
                     INSERT INTO DIAGNOZA  (ID,PRACOWNIK_ID ,PACJENT_ID ,Nazwa_diagnozy,Opis_diagnozy ,Data_diagnozy)
	VALUES ( (select nvl(max(DIAGNOZA.ID)+1,1) from DIAGNOZA),
    (select PRACOWNIK.id from PRACOWNIK where PRACOWNIK.ID = 2),
    (select PACJENT.id from PACJENT where PACJENT.ID = 2),
    'Osobowosc',
    'adaptacje i wewnetrzna integracje mysli, uczuc i zachowania ',
    '12-04-2019'
    );
    
                        INSERT INTO DIAGNOZA  (ID,PRACOWNIK_ID ,PACJENT_ID ,Nazwa_diagnozy,Opis_diagnozy ,Data_diagnozy)
	VALUES ( (select nvl(max(DIAGNOZA.ID)+1,1) from DIAGNOZA),
    (select PRACOWNIK.id from PRACOWNIK where PRACOWNIK.ID = 3),
    (select PACJENT.id from PACJENT where PACJENT.ID = 3),
    'funkcjonowanie poznawcze',
    'pogorszeniu sprawnosci procesow poznawczych bez towarzyszacego otepienia. ',
    '01-06-2019'
    );
 --tabela LEKI- DIAGNOZY

                 INSERT INTO leki_diagnozy  (LEKI_ID,DIAGNOZA_ID ,Dawtowanie)
	VALUES (
    (SELECT LEKI.ID FROM LEKI WHERE NAZWA_LEKA = 'Vita Buerlecithin'),
    (SELECT DIAGNOZA.ID FROM DIAGNOZA WHERE NAZWA_DIAGNOZY = 'zaburzenia pamieci'),
    'dwa razy na dzien'
    );
                     INSERT INTO leki_diagnozy  (LEKI_ID,DIAGNOZA_ID ,Dawtowanie)
	VALUES (
    (SELECT LEKI.ID FROM LEKI WHERE NAZWA_LEKA = 'Bilomag'),
    (SELECT DIAGNOZA.ID FROM DIAGNOZA WHERE NAZWA_DIAGNOZY = 'zaburzenia pamieci'),
    'jeden raz na dzien'
    );
    
                        INSERT INTO leki_diagnozy  (LEKI_ID,DIAGNOZA_ID ,Dawtowanie)
	VALUES (
    (SELECT LEKI.ID FROM LEKI WHERE NAZWA_LEKA = 'ALINESS'),
    (SELECT DIAGNOZA.ID FROM DIAGNOZA WHERE NAZWA_DIAGNOZY = 'Osobowosc'),
    'trzy razy na dzien'
    );
    
                            INSERT INTO leki_diagnozy  (LEKI_ID,DIAGNOZA_ID ,Dawtowanie)
	VALUES (
    (SELECT LEKI.ID FROM LEKI WHERE NAZWA_LEKA = 'Donectil'),
    (SELECT DIAGNOZA.ID FROM DIAGNOZA WHERE NAZWA_DIAGNOZY = 'funkcjonowanie poznawcze'),
    'dwa razy na dzien'
    );
    
    
    
commit;